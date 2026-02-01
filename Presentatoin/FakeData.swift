//
//  FakeData.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import Foundation

struct Planet: Identifiable, Hashable {
    var id = UUID()
    let name: String
}

class FakeData {
    static let subjects: [String] = [
        "SwiftUI НИС",
        "Алгебра",
        "Матан",
        "Дискретная математика",
        "БЖД",
        "История",
        "Ассемблер"
    ]
    
    static let planets: [Planet] = [
        Planet(name: "Меркурий"),
        Planet(name: "Верена"),
        Planet(name: "Земля"),
        Planet(name: "Марс"),
        Planet(name: "Юпитер"),
        Planet(name: "Сатурн"),
        Planet(name: "Уран"),
        Planet(name: "Нептун")
    ]
}
