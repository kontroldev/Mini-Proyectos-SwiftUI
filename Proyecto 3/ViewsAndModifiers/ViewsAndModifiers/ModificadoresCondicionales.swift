//
//  ModificadoresCondicionales.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 7/4/25.
//

import SwiftUI

// Vista principal que demuestra el uso de modificadores condicionales en SwiftUI
struct ModificadoresCondicionales: View {
    // Usamos @State para crear una propiedad reactiva que se puede modificar dentro de la vista.
    // Esta propiedad controla qué color se aplica al texto del botón.
    @State private var useRedText = false
    
    var body: some View {
        // Usamos una estructura if-else para mostrar diferentes botones según el valor de useRedText.
        if useRedText {
            // Si useRedText es true, se muestra este botón con texto en rojo.
            Button("Hello, World red!") {
                // Al pulsar el botón, cambiamos el estado a false usando toggle().
                useRedText.toggle()
            }
            .foregroundStyle(.red) // Modificador que aplica un color rojo al texto del botón.
        } else {
            // Si useRedText es false, se muestra este botón con texto en azul.
            Button("Hello, World Blue!") {
                // Al pulsar el botón, cambiamos el estado a true usando toggle().
                useRedText.toggle()
            }
            .foregroundStyle(.blue) // Modificador que aplica un color azul al texto del botón.
        }
    }
}


#Preview {
    ModificadoresCondicionales()
}

#Preview {
    ModificadoresCondicionales()
}
