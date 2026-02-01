//
//  NavSplitViewSImple.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavSplitViewSimple: View {
    
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationSplitView {
            List(FakeData.subjects, id: \.self, selection: $selection) { item in
                Text(item)
            }
            .navigationTitle("Предметы")
        } detail: {
            if let selected = selection {
                Text("Вы выбрали: \(selected)")
                    .font(.largeTitle)
            } else {
                Text("Выберите предмет")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    NavSplitViewSimple()
}
