//
//  ColorFrames.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 19/2/25.
//

import SwiftUI

struct ColorFrames: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Color.secondary // podemos usar los colores primario por defecto
                // Color(red: 1, green: 0.8, blue: 0) // Podemos hacer nuestro propios colores.
                //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200) // aqui ponemos el tamaño
                Color.red
                Color.blue
            }
            Text("Hello, content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
         .ignoresSafeArea()
    }
}

#Preview {
    ColorFrames()
}
