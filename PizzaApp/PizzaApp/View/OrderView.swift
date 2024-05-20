//
//  OrderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderView: View {
    
    @ObservedObject var orders: OrderModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                
                ScrollView {
                    ForEach($orders.orderItems) { order in
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
                }
                .background(.ultraThinMaterial)
                .background(.green)
                .padding(5)
            }
            .padding()
            .background(Color("Sky"))
            .cornerRadius(10)
            
            Button("Delete order") {
                if !orders.orderItems.isEmpty { orders.orderItems.removeLast()
                }
            }
             .background(.regularMaterial, in: Capsule())
            .padding(5)
        }
        .background(Color("Surf"))    }
}

#Preview {
    OrderView(orders: OrderModel())
}
