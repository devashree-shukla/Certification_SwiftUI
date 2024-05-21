//
//  MenuItemTileView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 11/2/22.
//

import SwiftUI

struct MenuItemTileView: View {
    var menuItem:MenuItem
    var body: some View{
        VStack{
             Group{
                if let image = UIImage(named:"\(menuItem.id)_sm"){
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        
                        
                }
            }
            Text(menuItem.name).font(.caption2)
                .padding(3)
        }
        .background(Color("Sky").opacity(0.5))
        .background(.regularMaterial)
        .cornerRadius(10)
        .shadow(radius: 3,x: 2,y: 2)
    }
}

struct MenuItemTileView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemTileView(menuItem: MenuModel().menu[0])
    }
}
