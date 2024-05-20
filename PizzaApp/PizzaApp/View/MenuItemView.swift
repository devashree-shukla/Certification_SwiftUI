//
//  MenuItemView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli's Piza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(.leading)
                if let image = UIImage(named: "0x_lg"){
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel convallis ex. Aliquam malesuada dapibus purus nec tempor. Cras aliquam fringilla congue. Aliquam leo odio, malesuada eget scelerisque id, gravida a magna. Aliquam a tincidunt metus, et cursus diam. Maecenas eget vulputate purus. Duis ut mauris ultrices, hendrerit orci et.")
                        .font(.body)
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
