//
//  TurnCardView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct TurnCardView: View {
var gradient: Gradient
var name: String
var age: Int
var question: String
var topBadge: String? = nil


var body: some View {
GeometryReader { geo in
ZStack(alignment: .topLeading) {
RoundedRectangle(cornerRadius: 20, style: .continuous)
.fill(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
.opacity(0.95)
.overlay(
RoundedRectangle(cornerRadius: 20)
.fill(Color.black.opacity(0.4))
.blendMode(.overlay)
)
.shadow(color: Color.black.opacity(0.6), radius: 10, x: 0, y: 4)


if let topBadge = topBadge {
Text(topBadge)
.font(.system(size: 12, weight: .semibold))
.padding(.horizontal, 10)
.padding(.vertical, 6)
.background(Capsule().fill(Color.black.opacity(0.6)))
.foregroundColor(.white)
.padding(12)
}


VStack(alignment: .leading, spacing: 12) {
Spacer()


Text("Tap to answer")
.font(.system(size: 14, weight: .regular))
.foregroundColor(Color.white.opacity(0.35))


Text("\(name), \(age)")
.font(.system(size: 18, weight: .bold))
.foregroundColor(.white)


Text(question)
.font(.system(size: 13))
.foregroundColor(Color.white.opacity(0.8))
.lineLimit(2)
}
.padding(18)
.padding(.bottom, 10)
.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
}
}
.frame(width: 240, height: 200)
}
}
