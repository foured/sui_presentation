//
//  ContentView.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

enum NOpts: String, CaseIterable, Identifiable {
    case settings = "Настройки"
    case shoppingList = "Список покупок"
    case planetarium = "Планетарий"
    var id: Self { self }
}

struct ContentView: View {

    @State var selectedOpt: NOpts? = nil

    var body: some View {
        NavigationSplitView {
            List(NOpts.allCases, selection: $selectedOpt) { opt in
                Text(opt.rawValue)
            }
            .navigationTitle("Меню")
        } detail: {
            if let selectedOpt {
                switch selectedOpt {
                case .settings:
                    FakeSettingsMenu()

                case .shoppingList:
                    ListInteractivity()
                    
                case .planetarium:
                    NavStackPath()

                }
            } else {
                Text("Выберите опцию")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    ContentView()
}
