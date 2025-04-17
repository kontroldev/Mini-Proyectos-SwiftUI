//
//  Modificadores.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 24/3/25.
//

import SwiftUI

struct Modificadores: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding() 
            .background(.yellow)
        
        /// El orden de los modificadores es importante en SwiftUI.
        /// Aquí el modificador `.padding()` se aplica después de todos los elementos internos del `VStack`,
        /// lo que significa que el relleno se aplica a toda la pila vertical (imagen + texto).
        /// Si se colocara antes, afectaría solo a los elementos individuales.
        
        // Vista → Modificador A → Modificador B → Modificador C → Resultado final
    }
}

#Preview {
    Modificadores()
}
 
