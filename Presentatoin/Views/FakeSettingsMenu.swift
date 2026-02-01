//
//  FakeSettingsMenu.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//


import SwiftUI

struct FakeSettingsMenu: View {

    @State private var username = ""
    @State private var notificationsEnabled = true
    @State private var selectedTheme = "Светлая"
    @State private var fontSize: Double = 16
    @State private var dailyReminder = Date()
    @State private var showAdvanced = false
    @State private var autoSync = true

    let themes = ["Светлая", "Тёмная", "Системная"]

    var body: some View {
        NavigationStack {
            Form {
                Section("Профиль") {
                    TextField("Имя пользователя", text: $username)
                    Toggle("Уведомления", isOn: $notificationsEnabled)
                }

                Section("Внешний вид") {
                    Picker("Тема", selection: $selectedTheme) {
                        ForEach(themes, id: \.self) { theme in
                            Text(theme)
                        }
                    }
                    Stepper("Размер шрифта: \(Int(fontSize))", value: $fontSize, in: 12...24)
                }

                Section("Напоминания") {
                    DatePicker("Ежедневное напоминание", selection: $dailyReminder, displayedComponents: .hourAndMinute)
                    Toggle("Включить синхронизацию", isOn: $autoSync)
                }

                Section {
                    Toggle("Показать расширенные настройки", isOn: $showAdvanced)
                    if showAdvanced {
                        NavigationLink("Расширенные опции") {
                            AdvancedSettingsView()
                        }
                    }
                }

                Section {
                    Button(role: .destructive) {
                        print("Выход из аккаунта")
                    } label: {
                        Text("Выйти из аккаунта")
                    }

                    Button {
                        print("Очистить кэш")
                    } label: {
                        Text("Очистить кэш")
                    }
                }
            }
            .navigationTitle("Настройки")
        }
    }
}