//
//  Grid.swift
//  Assignment2
//
//  Created by Alfredo Luco on 03-02-21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    
    var items: [Item]
    
    var itemBuilder: (Item) -> ItemView
        
    var body: some View {
        GeometryReader { geometry in
            self.body(for: GridLayout(itemCount: items.count, in: geometry.size))
        }
    }
    
    func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            itemBuilder(item)
                .frame(width: layout.itemSize.width, height: layout.itemSize.height)
                .position(layout.location(ofItemAt: items.firstIndex(where: { $0.id == item.id }) ?? 0))
        }
    }
}
