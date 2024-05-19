//
//  MenuRowView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct MenuRowView: View {
    
    var item: Int
    
    var body: some View {
        HStack(alignment:.top,spacing:15) {
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -20)
                    .padding(.leading, -10)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment:.leading) {
                Text("Margherita")
                Text("Description")
                RatingView(rating: 2)
            }
            Spacer()
        }
    }
    
}

#Preview {
    MenuRowView(item: 2)
}
