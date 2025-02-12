//
//  ContentView.swift
//  WeSplit
//
//  Created by Raúl Gallego Alonso on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {  // Creamos un Navgation con un texto, mas abajo definido.
            Form { // creamos formularios.
                Section {  // Creamos una sección
                    Text("Hello, World!")
                }
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
                Section {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }
            }
            
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    ContentView()
}
