//
//  CoffeeViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Brad B on 8/06/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import Foundation

class CoffeeViewModel {
    
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return self.coffee.name
    }
    
    var imageURL: String {
        return self.coffee.imageURL
    }
    
    var price: Double {
        return self.coffee.price
    }
}
