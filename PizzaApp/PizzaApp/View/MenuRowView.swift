//
//  MenuRowView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct MenuRowView: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack(alignment:.top,spacing:15) {
            if let image = UIImage(named: "\(item.id)_sm"){
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -10)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment:.leading) {
                HStack {
                    Text(item.name)
                        .bold()
                    Spacer()
                    Text(item.price, format: .currency(code: "USD"))
                }
                Text(item.description)
                RatingView(rating: item.rating)
            }
            Spacer()
        }
    }
    
}

#Preview {
    MenuRowView(item: testMenuItem)
}
