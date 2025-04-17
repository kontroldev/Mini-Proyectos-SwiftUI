//
//  ModificadoresPersonalizados.swift
//  ViewsAndModifiers
//
//  Created by Raúl Gallego Alonso on 17/4/25.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}

struct ModificadoresPersonalizados: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(Title())
    }
}

#Preview {
    ModificadoresPersonalizados()
}
