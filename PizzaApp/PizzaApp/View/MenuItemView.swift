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
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
                    .shadow(color: .teal, radius: 15, x: 8, y: 8)
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
//                    .bold()
                    .fontWeight(.semibold)
//                    .foregroundColor(Color(red: 0.38, green: 0.28, blue: 0.67))
//                    .foregroundColor(Color("Sky"))
                    .foregroundStyle(.thickMaterial)
                    .padding(.leading)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .bottom), in: Capsule())
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
