//
//  ContentView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var orders: [OrderItem] = testOrders
    @State private var showOrders = true
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) items")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                }
            }
            .foregroundStyle(.white)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            if showOrders {
                OrderView(orders: $orders)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
//        .background(Color.blue)
        .background(.linearGradient(colors: [.cyan, Color("Sky"), Color("Surf"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
    
}

#Preview {
    ContentView()
}
