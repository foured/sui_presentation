//
//  ListInteractivityVM.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

class ListInteractivityVM: ObservableObject {
    struct Item: Identifiable, Hashable {
        let id = UUID()
        var title: String
    }
    
    @Published var items: [Item] = [
        Item(title: "Яблоко"),
        Item(title: "Банан"),
        Item(title: "Апельсин")
    ]
    
    @Published var selectedItem: Item?
    @Published var newItemTitle = ""
    
    func tryAddNewItem() {
        guard !newItemTitle.isEmpty else { return }
        items.append(Item(title: newItemTitle))
        newItemTitle = ""
    }
    
    func delete(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    
    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}
