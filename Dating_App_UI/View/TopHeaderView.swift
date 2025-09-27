//
//  TopHeaderView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct TopHeaderView: View {
var body: some View {
HStack(alignment: .top) {
VStack(alignment: .leading, spacing: 6) {
HStack(alignment: .center, spacing: 10) {
Text("Your Turn")
.font(.system(size: 28, weight: .bold))


BadgeView(text: "7")
}


Text("Make your move, they are waiting 🎵")
.font(.system(size: 14, weight: .regular))
.foregroundColor(Color.white.opacity(0.6))
}


Spacer()


ZStack(alignment: .bottomTrailing) {
// Avatar with ring
ZStack {
Circle()
.strokeBorder(LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.95), Color(hex: "#35D07D")]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
.frame(width: 60, height: 60)


Image("avatar1")
.resizable()
.scaledToFill()
.frame(width: 56, height: 56)
.clipShape(Circle())
}


Circle()
.fill(Color(hex: "#111111"))
.frame(width: 28, height: 28)
.overlay(
Text("90")
.font(.system(size: 12, weight: .semibold))
.foregroundColor(.white)
)
.offset(x: 6, y: 6)
}
}
}
}
