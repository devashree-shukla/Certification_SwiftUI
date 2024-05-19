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
                //                    .bold()
                    .fontWeight(.semibold)
                //                    .foregroundColor(Color(red: 0.38, green: 0.28, blue: 0.67))
                //                    .foregroundColor(Color("Sky"))
                    .foregroundStyle(.black)
                    .padding(.leading)
//                    .frame(width: 300, height: 50)
                    .frame(minWidth: 150, maxWidth: 1000, maxHeight: 200)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .bottom), in: Capsule())
                if let image = UIImage(named: "0_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                    //                    .clipShape(RoundedRectangle(cornerRadius: 10))
                        .cornerRadius(10)
                        .shadow(color: .teal, radius: 15, x: 8, y: 8)
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                }
            }
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
