//
//  ListInteractivity.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct ListInteractivity: View {
    typealias VMType = ListInteractivityVM
    typealias Item = VMType.Item
    
    @StateObject private var vm: VMType = VMType()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Новый товар", text: $vm.newItemTitle)
                        .textFieldStyle(.roundedBorder)
                    
                    Button("Добавить") {
                        vm.tryAddNewItem()
                    }
                }
                .padding(.horizontal)
                
                List(selection: $vm.selectedItem) {
                    ForEach(vm.items) { item in
                        Text(item.title)
                    }
                    .onDelete(perform: vm.delete)
                    .onMove(perform: vm.move)
                }
            }
            .navigationTitle("Покупки")
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    ListInteractivity()
}
