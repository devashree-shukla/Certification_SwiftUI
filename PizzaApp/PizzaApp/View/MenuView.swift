//
//  MenuView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct MenuView: View {
  
    var body: some View {
        ScrollView {
            ForEach(1...25,id:\.self) { item in
                MenuRowView(item: item)
            }
        }
    }
    
}

#Preview {
    MenuView()
}
