//
//  OrderRowView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderRowView: View {
    
    var order: OrderItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Order item \(order)")
            HStack {
                Text(1, format: .number)
                Text("@")
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
        .padding()
        .cornerRadius(10)
        
    }
    
}

//#Preview {
//    OrderRowView(order: .constant(testOrderItem))
//}
