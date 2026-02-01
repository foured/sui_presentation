//
//  AdvancedSettingsView.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct AdvancedSettingsView: View {

    @State private var enableBetaFeatures = false
    @State private var developerMode = false

    var body: some View {
        Form {
            Section("Разработка") {
                Toggle("Бета-функции", isOn: $enableBetaFeatures)
                Toggle("Режим разработчика", isOn: $developerMode)
            }
        }
        .navigationTitle("Расширенные")
    }
}
