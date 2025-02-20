//
//  SwiftUIView.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 19/2/25.
//

import SwiftUI

struct UsingStacks: View {
    var body: some View {
        VStack {
            HStack {
                Text("A")
                Text("B")
            }
            HStack {
                Text("C")
                Text("D")
            }
        }
    }
}

#Preview {
    UsingStacks()
}
