//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 24/3/25.
//

import SwiftUI

 
/// Una vista principal simple que muestra un icono y un texto.
///
/// Esta vista sirve como ejemplo básico para entender cómo funcionan las vistas
/// en SwiftUI. Contiene una `VStack` con una `Image` de sistema y un `Text`.
///
/// - Uso: Esta vista se muestra desde el archivo `ViewsAndModifiersApp.swift`
///   dentro del `WindowGroup`, siendo el punto de entrada visual de la aplicación.
/// - Estructura:
///     - VStack con una imagen de sistema (`globe`)
///     - Texto con mensaje de bienvenida
///
/// - Note: Esta vista es creada como `struct` siguiendo el enfoque de SwiftUI
///   para permitir una reconstrucción eficiente de la interfaz.


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
