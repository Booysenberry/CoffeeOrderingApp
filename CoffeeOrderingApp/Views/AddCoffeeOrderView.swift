//
//  AddCoffeeOrderView.swift
//  CoffeeOrderingApp
//
//  Created by Brad B on 9/06/20.
//  Copyright © 2020 Booysenberry. All rights reserved.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @ObservedObject private var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    var body: some View {
        
        NavigationView {
            
            
            
            VStack {
                
                Form {
                    
                    Section(header: Text("Information").font(.body)) {
                        TextField("Enter name", text: self.$addCoffeeOrderVM.name)
                    }
                    
                    Section(header: Text("Select Coffee").font(.body)) {
                        
                        ForEach(addCoffeeOrderVM.coffeeList, id:\.name) { coffee in
                            
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                        }
                    }
                    
                    Section(header: Text("Select Size").font(.body), footer: Text("Total")) {
                        
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            
                            Text("Small").tag("small")
                            Text("Medium").tag("medium")
                            Text("Large").tag("large")
                            
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                HStack {
                    
                    Button("Place Order") {
                        
                    }.padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100))
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                    
                }
            }.navigationBarTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView()
    }
}

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            
            Image(coffee.imageURL)
                .resizable()
                .frame(width: 40, height: 40, alignment: .leading)
                .cornerRadius(5)
            
            Text(coffee.name)
            
            Spacer()
            
            //display checkmark next to selected coffee
            Image(systemName: self.selection == self.coffee.name ? "checkmark":"").padding()
            
        }.onTapGesture { //check and uncheck selection
            self.selection = self.coffee.name
        }
    }
}
