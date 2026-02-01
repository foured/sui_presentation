//
//  FormPicker.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct FormSimpleSettings: View {
    typealias VMType = FormSimpleSettingsVM
    typealias Level = VMType.Level
    
    @StateObject private var vm: VMType = VMType()
    
    var body: some View {
        Form {
            Section("Уровень") {
                Picker("Сложность", selection: $vm.level) {
                    ForEach(Level.allCases) { level in
                        Text(level.rawValue.capitalized)
                    }
                }
            }
            Section("Дата") {
                DatePicker(
                    "Дата сдачи",
                    selection: $vm.date,
                    displayedComponents: .date
                )
            }
            Section("Очки") {
                Stepper(
                    "Количество: \(vm.points)",
                    value: $vm.points,
                    in: 1...10
                )
            }
            Section("Email") {
                TextField("Введите email", text: $vm.email)
                    .keyboardType(.emailAddress)
                
                if !vm.isValid {
                    Text("Некорректный email")
                        .foregroundStyle(.red)
                }
            }
        }
    }
}

#Preview {
    FormSimpleSettings()
}
