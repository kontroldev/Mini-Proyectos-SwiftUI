//
//  VistaPropiedades.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 7/4/25.
//

import SwiftUI

struct VistaPropiedades: View {
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

#Preview {
    VistaPropiedades()
}

/// **Diferencias entre propiedades y modificadores en SwiftUI:
//
// - **Propiedades**: Definen el estado o los datos de la vista, como el texto que se muestra o el valor que afecta el comportamiento de la vista.
//   Ejemplo: una variable que contiene el texto mostrado en la vista o un valor de estado.
//
// - **Modificadores**: Son funciones que se aplican a las vistas para cambiar su apariencia o comportamiento, como el color, tamaño o posición de los elementos visuales.
//   Ejemplo: .foregroundColor, .font, .padding
