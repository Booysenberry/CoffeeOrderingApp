//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Brad Booysen on 27/05/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderlistVM = OrderListViewModel()
    
    var body: some View {
        
        NavigationView {
            
            OrderListView(orders: self.orderlistVM.orders)
            
            .navigationBarTitle("Coffee Orders")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
