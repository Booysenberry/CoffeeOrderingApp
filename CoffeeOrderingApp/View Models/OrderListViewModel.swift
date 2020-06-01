//
//  OrderListViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Brad B on 2/06/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders() // Fetch orders whenever OrderListViewModel is initialised
    }
    
    func fetchOrders() {
        WebService().getAllOrders { orders in
            
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
        }
    }
}

class OrderViewModel {
    
    var id = UUID()
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var total: Double {
        return self.order.total
    }
}
