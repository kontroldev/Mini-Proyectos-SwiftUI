//
//  VistaModificadores.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 16/4/25.
//

import SwiftUI

/// Vista personalizada creada para la lección de composición de vistas.
///
/// En esta clase aprendemos cómo dividir el código SwiftUI en componentes reutilizables.
/// `CapsuleText` encapsula un `Text` con estilos comunes, y se puede usar en cualquier parte del proyecto.
/// Esto mejora la organización del código, evita repeticiones y facilita aplicar cambios visuales.
struct CapsuleText: View {
    var text: String
    
    var body: some View {
        // .foregroundStyle(.white) → la hemos movido fuera para permitir estilos personalizados desde fuera.
        Text(text)
            .font(.largeTitle)
            .padding()
            //.foregroundStyle(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

/// Vista principal de demostración de la composición.
///
/// Usamos `CapsuleText` para mostrar cómo una vista personalizada se puede reutilizar
/// múltiples veces dentro de otra vista.
/// Este enfoque hace que el `body` principal sea más limpio y que el código sea modular.
struct ComposicionVistas: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                // Aplicamos un color de texto blanco directamente al usar CapsuleText.
                // Este modificador tiene prioridad sobre cualquier valor que estuviera dentro de CapsuleText.
                .foregroundStyle(.white)
            CapsuleText(text: "second")
                // Aquí usamos un color de texto amarillo personalizado para esta instancia específica de CapsuleText.
                // Esto demuestra cómo podemos aplicar modificadores desde fuera,
                // permitiendo reutilizar la vista base pero personalizar su apariencia.
                .foregroundStyle(.yellow)
        }
    }
}
    
#Preview {
    ComposicionVistas()
}
