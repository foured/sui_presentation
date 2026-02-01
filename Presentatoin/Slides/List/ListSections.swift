//
//  Sections.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct ListSections: View {
    var body: some View {
        List {
            Section("Планеты") {
                ForEach(FakeData.planets) { planet in
                    Text(planet.name)
                }
            }
            Section("Предметы") {
                ForEach(FakeData.subjects, id: \.self) { subject in
                    Text(subject)
                }
            }
        }
    }
}

#Preview {
    ListSections()
}
