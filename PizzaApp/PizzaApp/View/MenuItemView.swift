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
                addedItem.toggle()
            } label: {
                HStack {
                    Spacer()
                    Text(12.99, format: .currency(code: "USD")).bold()
                    Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                    Spacer()
                }
            }
            .foregroundColor(.white)
            .background(Color(.red), in: Capsule())
            .padding(5)
            .shadow(radius: 10)
        }
    }
}

#Preview {
    MenuItemView(item: .constant(testMenuItem))
}
