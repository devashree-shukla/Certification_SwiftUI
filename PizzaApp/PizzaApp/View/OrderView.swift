//
//  OrderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderView: View {
    
    @Binding var orders: [OrderItem]
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                
                ScrollView {
                    ForEach($orders, id:\.id) { order in
                        OrderRowView(order: order)
                            .padding(5)
                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 10))
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 5)
                    }
                }
                .padding([.top], 80)
                
                HStack {
                    Text("Order Pizza")
                        .font(.title)
                        .frame(height: 70)
                    Spacer()
                    Label {
                        Text(59.99,format: .currency(code: "USD"))
                    }
                icon: {
                    Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                }
                }
                .background(.ultraThinMaterial)
                .background(.green)
                .padding(5)
            }
            .padding()
            .background(Color("Sky"))
            .cornerRadius(10)
            
            Button("Delete order") {
                if !orders.isEmpty { orders.removeLast()
                }
            }
             .background(.regularMaterial, in: Capsule())
            .padding(5)
        }
        .background(Color("Surf"))    }
}

#Preview {
    OrderView(orders: .constant(testOrders))
}
