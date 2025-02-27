//
//  AlertMessages.swift
//  GuessTheFlag
//
//  Created by Raúl Gallego Alonso on 27/2/25.
//

import SwiftUI

struct AlertMessages: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
              
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("please read this.")
        }
}
}
#Preview {
    AlertMessages()
}
