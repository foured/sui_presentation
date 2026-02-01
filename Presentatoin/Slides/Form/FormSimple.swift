//
//  FormSimple.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct FormSimple: View {
    @State private var name = ""
    @State private var isEnabled = false
    
    var body: some View {
        Form {
            Section("Профиль") {
                TextField("Имя", text: $name)
                Toggle("Активен", isOn: $isEnabled)
            }
        }
    }
}

#Preview {
    FormSimple()
}
