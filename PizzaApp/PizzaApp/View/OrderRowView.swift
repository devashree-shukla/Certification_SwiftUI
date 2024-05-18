//
//  OrderRowView.swift
//  PizzaApp
//
//  Created by devashree shukla on 18/05/24.
//

import SwiftUI

struct OrderRowView: View {
    
    var order: Int
    
    var body: some View {
        HStack(alignment:.firstTextBaseline){
            Text("Your Order item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
    
}

#Preview {
    OrderRowView(order: 1)
}
