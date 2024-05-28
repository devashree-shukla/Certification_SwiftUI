//
//  MenuItemView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct MenuItemView: View {
    
    @State private var addedItem: Bool = false
    @Binding var item: MenuItem
    @State private var presentAlert = false
    @ObservedObject var orders: OrderModel
    @State private var newOrder:Bool = true
    @State private var order = noOrderItem

    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.leading)
                if let image = UIImage(named: "\(item.id)_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .bottom), in: Capsule())
            .shadow(color: .teal, radius: 15, x: 8, y: 8)
            
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.body)
                    
                    
                }
            }
            Button {
                presentAlert.toggle()
            } label: {
                HStack {
                    Spacer()
                    Text(item.price, format: .currency(code: "USD")).bold()
                    Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                    Spacer()
                }
            }
            .disabled(item.id < 0)
            .foregroundColor(.white)
            .background(Color(.red), in: Capsule())
            .padding(5)
            .shadow(radius: 10)
//            .alert("Buy this pizza", isPresented: $presentAlert) {
//                Button("No", role: .cancel) { }
//                Button("Yes") {
//                    addedItem.toggle()
//                    orders.addOrder(item, quantity: 1)
//                }
//                Button("Make it double") {
//                    addedItem.toggle()
//                    orders.addOrder(item, quantity: 2)
//                }
//            }
            .sheet(isPresented: $presentAlert) {
                addedItem = true
            } content: {
                OrderDetailView(orderItem: $order, presentSheet: $presentAlert, newOrder: $newOrder)
            }
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
}
