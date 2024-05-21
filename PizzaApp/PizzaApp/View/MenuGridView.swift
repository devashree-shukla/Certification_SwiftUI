//
//  MenuGridView.swift
//  PizzaApp
//
//  Created by devashree shukla on 21/05/24.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    @Binding var selectedItem: MenuItem
    @State private var favourites: [Int] = []
    let columnLayout = Array(repeating: GridItem(spacing: 10), count: 4)
    let columnLayoutFav = Array(repeating: GridItem(), count: 5)
    @Namespace private var nsspace
    
    func menu(id: Int) -> MenuItem {
        menu.first(where: { $0.id == id }) ?? noMenuItem
    }
    
    var body: some View {
        VStack {
            Text(selectedItem.name)
            LazyVGrid(columns: columnLayoutFav) {
                ForEach(favourites.sorted(), id: \.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .matchedGeometryEffect(id: item, in: nsspace)
                        .onTapGesture {
                            selectedItem = menu(id: item)
                        }
                        .onLongPressGesture {
                            if let ind = favourites.first(where: { $0 == item}) {
                                favourites.remove(at: ind)
                            }
                        }
                }
            }
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) { item in
                        if !favourites.contains(item.id) {
                            MenuItemTileView(menuItem: item)
                                .animation(.easeOut, value: favourites)
                                .matchedGeometryEffect(id: item, in: nsspace)
                                .onTapGesture(count: 2) {
                                        if !favourites.contains(item.id) {
                                            withAnimation(.easeInOut) {
                                                favourites.append(item.id)
                                            }
                                        }
                                }
                            
                                .onTapGesture {
                                    selectedItem = item
                                }
                            
                                .onLongPressGesture {
                                    selectedItem = noMenuItem
                                }
                        }
                    }
                }
            }
        }
        .animation(.easeOut(duration: 0.7), value: favourites)
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu, selectedItem: .constant(noMenuItem))
}
