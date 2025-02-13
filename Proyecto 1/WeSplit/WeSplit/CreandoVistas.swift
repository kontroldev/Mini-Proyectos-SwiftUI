//
//  CreandoVistas.swift
//  WeSplit
//
//  Created by Raúl Gallego Alonso on 16/2/25.
//

import SwiftUI

/// Una vista que permite seleccionar un estudiante de una lista usando un `Picker` dentro de un `Form`.
///
/// - La vista muestra una lista de estudiantes predefinidos.
/// - Usa `@State` para gestionar la selección y actualizar la UI.
/// - Utiliza `NavigationStack` para habilitar la navegación en la app.
struct CreandoVistas: View {
    
    /// Lista de estudiantes disponibles para la selección.
    let students = ["Harry", "Ron", "Hermione"]
    
    /// Estudiante seleccionado por el usuario.
    /// - Se actualiza dinámicamente y refleja la selección en la interfaz.
    @State private var selectedStudent = "Harry"
    
    /// Cuerpo de la vista que contiene un `Form` con un `Picker` dentro de un `NavigationStack`.
    var body: some View {
        NavigationStack {
            Form {
                /// Un `Picker` que permite seleccionar un estudiante de la lista.
                ///
                /// - `selection: $selectedStudent`: Enlaza la selección con la variable de estado.
                /// - `ForEach(students, id: \.self)`: Genera dinámicamente opciones de la lista de estudiantes.
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text("\($0)")
                    }
                }
            }
            .navigationTitle("Select a Student") // Establece el título de la pantalla de navegación.
        }
    }
}

/// Vista previa de `CreandoVistas` para su visualización en el canvas de Xcode.
#Preview {
    CreandoVistas()
}
