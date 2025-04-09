//
//  VistaPropiedades.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 7/4/25.
//

import SwiftUI

struct VistaPropiedades: View {
    // Propiedad computada que devuelve una vista tipo Text con el contenido "Draco dormiens"
    // Esta vista puede reutilizarse varias veces dentro del body con estilos diferentes
    var motto1: some View {
        Text("Draco dormiens")
    }
    
    // Propiedad constante que guarda una vista Text directamente
    // Útil para vistas fijas sin lógica adicional
    let motto2 = Text("nunquam titillandus")
    
    // Otra propiedad computada que devuelve un VStack con dos textos
    // Esta técnica permite organizar vistas complejas fuera del body principal
    var spells: some View {
      //  VStack {  // Primer tipo 
        Group {  // segundo tipo
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    /// *** tercer tipo ***
  /* @ViewBuilder var spells: some View {
            Text("Lumos")
            Text("Obliviate")
        }
    } */
    
    // Vista principal del componente
    // Se compone de las propiedades motto1 y motto2 con estilos aplicados individualmente
    // Los modificadores se pueden aplicar sobre cada uso, sin afectar la propiedad original
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


/// ** ¿Qué es un Group en SwiftUI? **
/// Un Group es un contenedor neutro, que no añade ningún tipo de disposición visual como VStack, HStack o ZStack. Sirve para organizar el código internamente, dividir partes complejas del body.

/// *** ¿Por qué usar Group? ***
// Cuando no necesitas un layout específico (horizontal o vertical).
//  Cuando solo quieres aplicar un modificador en común a varias vistas.
//   Cuando estás separando lógicamente el código sin cambiar el diseño.
