//
//  ContentView.swift
//  WeSplit
//
//  Created by Raúl Gallego Alonso on 12/2/25.
//

import SwiftUI

struct ContentView: View {
    // Definimos una lista de nombres de estudiantes
    let students = ["Harry", "Ron", "Hermione"]
    
    // @State permite que SwiftUI redibuje la vista cuando cambie el valor de `selectedStudent`
    @State private var selectedStudent  = "Harry"
    
    var body: some View {
        NavigationStack { // Contenedor que permite manejar la navegación dentro de la vista
            Form { // Formulario que organiza los elementos de manera estándar en iOS
                Picker("Selected Student", selection: $selectedStudent) {
                    // `selection: $selectedStudent` enlaza el Picker con la variable @State
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a Student")
        }
    }
}

#Preview {
    ContentView() // Activa la vista previa en Xcode sin necesidad de ejecutar la app en un simulador
}
