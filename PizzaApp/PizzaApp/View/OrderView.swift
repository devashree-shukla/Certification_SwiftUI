//
//  OrderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderView: View {
    
    var orders: [Int]
    
    var body: some View {
        VStack {
            Label {
                Text(59.99,format: .currency(code: "USD"))
            }
        icon: {
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
        }
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView {
                ForEach(orders, id:\.self){ order in
                    OrderRowView(order: order)
                }
            }
        }
    }
}

#Preview {
    OrderView(orders: [1,2,3])
}
