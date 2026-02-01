//
//  NavStackList.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavStackList: View {
    var body: some View {
        NavigationStack {
            List(FakeData.subjects, id: \.self) { item in
                NavigationLink(item) {
                    Text(item)
                        .navigationTitle(item)
                }
            }
            .navigationTitle("Предметы")
        }
    }
}

#Preview {
    NavStackList()
}
