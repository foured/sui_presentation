//
//  NavSplitViewPathVM.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

class NavSplitViewPathVM: ObservableObject {
    enum DetailRoute: Hashable {
        case info(String)
        case exam(String)
    }
    
    @Published var selection: String? = nil
    @Published var path: [DetailRoute] = []
}
