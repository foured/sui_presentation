//
//  NavStackPath.swift
//  Presentatoin
//
//  Created by Иван Топоров on 01.02.2026.
//

import SwiftUI

struct NavStackPath: View {
    
    @State var path: [Planet] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            List(FakeData.planets) { planet in
                Button(planet.name) {
                    path.append(planet)
                }
            }
            .navigationTitle("Планеты")
            .navigationDestination(for: Planet.self) { planet in
                VStack(spacing: 16) {
                    Text(planet.name)
                        .font(.title)
                    
                    Button("Вернуться в корень") {
                        path.removeAll()
                    }
                }
            }
        }
    }
}

#Preview {
    NavStackPath()
}
