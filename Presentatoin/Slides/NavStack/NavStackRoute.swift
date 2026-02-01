//
//  NavStackRoute.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import Foundation
import SwiftUI

struct NavStackRoute: View {
    enum Route: Hashable {
        case firstView
        case secondView
    }
    
    @State private var path: [Route] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack(spacing: 20) {
                Button("Перейти в Первый экран") {
                    path.append(.firstView)
                }
                .buttonStyle(.borderedProminent)
                
                Button("Перейти во Второй экран") {
                    path.append(.secondView)
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Главный экран")
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .firstView:
                    FirstView()
                case .secondView:
                    SecondView()
                }
            }
        }
    }
}

#Preview {
    NavStackRoute()
}

struct FirstView: View {
    var body: some View {
        VStack {
            Text("Это Первый экран")
                .font(.title)
        }
        .navigationTitle("Первый")
    }
}


struct SecondView: View {
    var body: some View {
        VStack {
            Text("Это Второй экран")
                .font(.title)
        }
        .navigationTitle("Второй")
    }
}
