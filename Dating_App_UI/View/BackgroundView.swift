//
//  BackgroundView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct BackgroundView: View {
var body: some View {
ZStack {
// Base dark
LinearGradient(gradient: Gradient(colors: [Color(hex: "#040406"), Color(hex: "#0b0b0f")]), startPoint: .topLeading, endPoint: .bottomTrailing)


// Soft vignette
RadialGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.6)]), center: .center, startRadius: 200, endRadius: 900)


// Star speckles (static positions for pixel consistency)
StarField()
.blendMode(.screen)
.opacity(0.15)
}
}
}
