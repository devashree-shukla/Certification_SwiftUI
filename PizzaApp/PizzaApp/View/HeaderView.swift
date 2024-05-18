//
//  HeaderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
            .scaledToFit()
            Text("Huli Pizza Company")
                .background()
        }
    }
    
}

#Preview {
    HeaderView()
}
