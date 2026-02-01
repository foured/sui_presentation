//
//  NavStackSimple.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavStackSimple: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Перейти") {
                Text("Второй экран")
                    .navigationTitle("Детали")
            }
            .navigationTitle("Главная")
        }
    }
}

#Preview {
    NavStackSimple()
}
