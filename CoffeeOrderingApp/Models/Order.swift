//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Brad Booysen on 27/05/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import Foundation

struct Order: Codable {
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
    
}
