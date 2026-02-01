//
//  NavStackList2.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavStackList2: View {
    var body: some View {
        NavigationStack {
            List(FakeData.subjects, id: \.self) { item in
                NavigationLink(value: item) {
                    Text(item)
                }
            }
            .navigationTitle("Предметы")
            .navigationDestination(for: String.self) { item in
                Text(item)
                    .navigationTitle(item)
            }
        }
    }
}

#Preview {
    NavStackList2()
}
