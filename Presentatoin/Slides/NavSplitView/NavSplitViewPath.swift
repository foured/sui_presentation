//
//  NavSplitViewPath.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavSplitViewPath: View {
    typealias VMType = NavSplitViewPathVM
    
    @StateObject private var vm: VMType = VMType()

    var body: some View {
        NavigationSplitView {
            List(FakeData.subjects, id: \.self, selection: $vm.selection) { item in
                Text(item)
            }
            .navigationTitle("Предметы")
        } detail: {
            if let selected = vm.selection {
                NavigationStack(path: $vm.path) {
                    VStack(spacing: 20) {
                        Text(selected)
                            .font(.title)

                        Button("Информация") {
                            vm.path.append(.info(selected))
                        }

                        Button("Экзамен") {
                            vm.path.append(.exam(selected))
                        }
                    }
                    .navigationTitle(selected)
                    .navigationDestination(for: VMType.DetailRoute.self) { route in
                        switch route {
                        case .info(let item):
                            Text("Информация по \(item)")
                        case .exam(let item):
                            Text("Экзамен по \(item)")
                        }
                    }
                }
            } else {
                Text("Выберите предмет")
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview {
    NavSplitViewPath()
}
