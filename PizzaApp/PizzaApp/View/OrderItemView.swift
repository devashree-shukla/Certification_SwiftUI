//
//  OrderItemView.swift
//  PizzaApp
//
//  Created by devashree shukla on 20/05/24.
//

import SwiftUI

struct OrderItemView: View {
    
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    @State var pizzaCrust: PizzaCrust
    @State private var name: String = ""
    @State private var comments: String = ""
    
    init(orderItem: Binding<OrderItem>) {
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    
    var body: some View {
        VStack {
            //Text
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            //Toggle
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients : " + (doubleIngredient ? " Yes" : " No"))
            }
            
            //Stepper
            Stepper(value: $quantity, label: {
                Text("\(quantity) " + (quantity == 1 ? "pizza" : "pizzas"))
            })
            
            //Picker
            Picker(selection: $pizzaCrust) {
                ForEach(PizzaCrust.allCases, id: \.self) { crust in
                    Text(crust.rawValue).tag(crust)
                }
            } label: {
                Text("Pizza Crust")
            }
            .pickerStyle(.wheel)
            
            //Text
            VStack {
                Text("Comments:")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                TextEditor(text: $comments)
            }
            .clipShape(RoundedRectangle(cornerRadius: 3))
            .shadow(radius: 3)
            
            Spacer()
        }
        .padding(5)
    }
}

#Preview {
    OrderItemView(
        orderItem: .constant(testOrderItem)
    )
}
