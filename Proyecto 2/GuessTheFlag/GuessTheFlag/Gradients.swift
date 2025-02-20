//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 20/2/25.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.blue.gradient)
        
        
        //    LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
        
       /* LinearGradient(stops: [
            .init(color: .white, location: 0.45),
            .init(color: .black, location: 0.55)
        ], startPoint: .top, endPoint: .bottom) */
        
      //  RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
        
      //  AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
    }
}

#Preview {
    Gradients()
}




/// **4 TIPOS DE GRADIENTES**

/*  // 📌 Gradiente Lineal: cambia de color en línea recta
 LinearGradient(
     colors: [.blue, .purple],  // Colores de inicio y fin
     startPoint: .top,          // Comienza desde la parte superior
     endPoint: .bottom          // Termina en la parte inferior
 )
 .frame(height: 100) // Ajusta la altura del gradiente
 
 // 📌 Gradiente Radial: los colores se expanden desde el centro en forma circular
 RadialGradient(
     colors: [.yellow, .red],   // Colores desde el centro hacia afuera
     center: .center,           // Centro del gradiente
     startRadius: 10,           // Radio de inicio (más pequeño)
     endRadius: 100             // Radio final (más grande)
 )
 .frame(height: 100)
 
 // 📌 Gradiente Angular: los colores giran alrededor de un punto
 AngularGradient(
     colors: [.red, .blue, .green, .yellow], // Colores en círculo
     center: .center                         // Centro de rotación del gradiente
 )
 .frame(height: 100)
 
 // 📌 Gradiente Elíptico: similar al radial pero con forma ovalada
 EllipticalGradient(
     colors: [.blue, .purple], // Colores de inicio y fin
     center: .center,          // Punto central del gradiente
     startRadiusFraction: 0.2, // Tamaño inicial relativo
     endRadiusFraction: 1.0    // Tamaño final relativo
 */
