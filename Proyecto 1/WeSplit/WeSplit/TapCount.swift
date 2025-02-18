//
//  TapCount.swift
//  WeSplit
//
//  Created by Raúl Gallego Alonso on 18/2/25.
//

import SwiftUI

struct TapCount: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}
#Preview {
    TapCount()
}
