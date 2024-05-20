//
//  OrderRowView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderRowView: View {
    
    @Binding var order: OrderItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(order.item.name)
            HStack {
                Text(order.quantity, format: .number)
                Text("@")
                Text(order.item.price, format: .currency(code: "USD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
        .padding()
        .cornerRadius(10)
        
    }
    
}

#Preview {
    OrderRowView(order: .constant(testOrderItem))
}
