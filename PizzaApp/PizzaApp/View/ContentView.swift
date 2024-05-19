//
//  ContentView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5]
    var showOrders = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            if showOrders {
                OrderView(orders: orders)
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
