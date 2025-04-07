//
//  ModificadorVistas.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 7/4/25.
//

import SwiftUI

struct ModificadorVistas: View {
    var body: some View {
        // VStack contiene cuatro textos representando casas de Hogwarts
        // A este contenedor se le aplicará un modificador de desenfoque (blur)
        VStack {
            // Este texto tiene un modificador blur con radio 0, lo que anula el blur del VStack 👀
            Text("Gryffindor")
                .blur(radius: 0)
            // Este texto hereda el blur del VStack, se verá desenfocado
            Text("Hufflepuff")
            // También hereda el blur del VStack
            Text("Ravenclaw")
            // Este texto también se verá afectado por el blur del contenedor
            Text("Slytherin")
        }
        // Aplicamos un blur de radio 5 a todo el VStack,
        // pero cualquier vista hija con su propio blur anulará este efecto
        .blur(radius: 5)
    }
}

#Preview {
    ModificadorVistas()
}
