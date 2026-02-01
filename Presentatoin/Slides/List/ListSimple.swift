//
//  SimpleList.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct ListSimple: View {
    var body: some View {
        VStack {
            List(FakeData.subjects, id: \.self) { subject in
                Text(subject)
            }
            List {
                Text("Опция 1")
                Text("Опция 2")
            }
        }
    }
}

#Preview {
    ListSimple()
}
