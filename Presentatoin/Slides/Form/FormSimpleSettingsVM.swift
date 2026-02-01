//
//  FormSimpleSettingsVM.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import Foundation
import SwiftUI

class FormSimpleSettingsVM: ObservableObject {
    enum Level: String, CaseIterable, Identifiable {
        case beginner, intermediate, advanced
        var id: Self { self }
    }
    
    @Published var level: Level = .beginner
    @Published var date = Date()
    @Published var points = 3
    @Published var email = ""
    
    var isValid: Bool {
        email.contains(".")
    }
}
