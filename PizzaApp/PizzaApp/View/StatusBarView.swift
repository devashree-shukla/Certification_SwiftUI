//
//  StatusBarView.swift
//  PizzaApp
//
//  Created by devashree shukla on 20/05/24.
//

import SwiftUI

struct StatusBarView: View {
    
    @Binding var showOrders: Bool
    @EnvironmentObject var orders: OrderModel
    
    var body: some View {
        HStack {
            Text("\(orders.orderItems.count) items")
            Spacer()
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
            }
            Spacer()
            Label {
                Text(orders.orderTotal,format: .currency(code: "USD"))
            } icon: {
            Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
        .foregroundStyle(.white)
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)    }
    
}

#Preview {
    StatusBarView(showOrders: .constant(false))
        .environment(OrderModel())
}
