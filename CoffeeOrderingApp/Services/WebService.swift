//
//  WebService.swift
//  CoffeeOrderingApp
//
//  Created by Brad Booysen on 28/05/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import Foundation

class WebService {
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()) {
        
        // create url
        guard let url = URL(string: "https://island-bramble.glitch.me/orders") else {
            
            DispatchQueue.main.async {
                completion(nil)
            }
            return
        }
        
        // create data task
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            // unwrap data
            guard let data = data, error == nil else {
            
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let orders = try? JSONDecoder().decode([Order].self, from: data) // Attempt to decode JSON data using the Order model
            
            DispatchQueue.main.async {
                completion(orders)
            }
        }.resume() // Fire api call
    }
}
