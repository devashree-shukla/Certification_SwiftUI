//
//  HeaderView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var orders: OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        VStack {
            if (vSizeClass ?? .regular) != .compact {
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
            } else {
                HStack {
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("Huli Pizza Company")
                        .font(.custom("Georgia", size: 30, relativeTo: .title))
                        .foregroundColor(Color("Sky"))
                        .fontWeight(.heavy)
                }
            }
        }
        .background(.ultraThinMaterial)
    }
    
}

#Preview {
    HeaderView()
        .environmentObject(OrderModel())
}
