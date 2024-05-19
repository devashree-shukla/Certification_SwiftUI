//
//  HeaderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
//                .foregroundColor(.white)
//                .foregroundColor(Color("Surf"))
                .foregroundStyle(.regularMaterial)
                .fontWeight(.medium)
            
        }
    }
    
}

#Preview {
    HeaderView()
}
