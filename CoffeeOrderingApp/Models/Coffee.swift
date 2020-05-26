//
//  Coffee.swift
//  CoffeeOrderingApp
//
//  Created by Brad Booysen on 27/05/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import Foundation

struct Coffee {
    
    let name: String
    let imageURL: String
    let price: Double

}

extension Coffee {
    
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Cappuccino", imageURL: "cappuccino", price: 2.5),
            Coffee(name: "Espresso", imageURL: "espresso", price: 3.5),
            Coffee(name: "Flat White", imageURL: "flatWhite", price: 4.5)
        ]
    }
}



