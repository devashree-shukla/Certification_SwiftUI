//
//  RatingView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct RatingView: View {
    
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...6,id:\.self) { rate in
                Image(systemName: rate <= rating ? "fork.knife.circle.fill" : "fork.knife.circle")
            }
        }
    }
    
}

#Preview {
    RatingView(rating: 2)
}
