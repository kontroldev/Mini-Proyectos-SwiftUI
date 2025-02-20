//
//  ColorsFrames.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 20/2/25.
//

import SwiftUI

/*struct ColorsFrames: View {
    var body: some View {
        ZStack {
            
            //Color.secondary
           Color (red: 1, green: 0.8, blue: 0) // podemos tambienj crear nuestro colores
                //.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200) le podemos poner un tamaño.
            Text("Your content")
        }
        .ignoresSafeArea()
        // .background(.blue)
    }
}
*/

/// **Segunda parte**

struct ColorsFrames: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}




#Preview {
    ColorsFrames()
}
