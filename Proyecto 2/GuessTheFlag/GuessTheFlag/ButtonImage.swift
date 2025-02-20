//
//  ButtonImage.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 20/2/25.
//

import SwiftUI

struct ButtonImage: View {
    var body: some View {
        
        // Button("Delete selection", role: .destructive, action: executeDelete)
        /* VStack {
         Button("Button 1") {}
         .buttonStyle(.bordered)
         
         Button("Button 2", role: .destructive) {}
         .buttonStyle(.bordered)
         
         Button("Button 3") {}
         .buttonStyle(.borderedProminent)
         .tint(.indigo)
         
         Button("Button 4", role: .destructive) {}
         .buttonStyle(.borderedProminent) */
        
        
        /*  Button {
         print("Button was tapped")
         } label: {
         Text("Tap me!")
         .padding()
         .foregroundStyle(.white)
         .background(.red)
    } */
        
        /// **3 FORMAS PARA MANEJAR IMAGENES**
       //  Image("singapore")
        
       // Image(decorative: "singapore")
        
       /* Image(systemName: "pencil.circle") // Aqui copiamos el nombre en SP Symbols
            .foregroundStyle(.red)
            .font(.largeTitle) */
        
        
        /// **IMAGENES Y TEXTO A LA VEZ**
        Button {
            print("Button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
    }
    
    func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ButtonImage()
}


// ‼️Por defecto, el lector de pantalla leerá el nombre de su imagen si está habilitado, así que asegúrese de dar a sus imágenes nombres claros si desea evitar confundir al usuario.
