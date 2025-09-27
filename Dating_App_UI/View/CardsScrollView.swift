//
//  CardsScrollView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct CardsScrollView: View {
var body: some View {
ScrollView(.horizontal, showsIndicators: false) {
HStack(spacing: 16) {
TurnCardView(gradient: Gradient(colors: [Color(hex: "#17C98F"), Color(hex: "#2CC8A8"), Color(hex: "#7C5DE7")]), name: "Amanda", age: 22, question: "What is your most favorite childhood memory?")


TurnCardView(gradient: Gradient(colors: [Color(hex: "#C78E6A"), Color(hex: "#B57F64")]), name: "Malte", age: 31, question: "What is the most important quality in friendships to you?", topBadge: "📣They made a move!")


TurnCardView(gradient: Gradient(colors: [Color(hex: "#4A6B4A"), Color(hex: "#314B36")]), name: "E...", age: 29, question: "If you could travel anywhere... ", topBadge: "📣")
}
.padding(.horizontal, 18)
.padding(.vertical, 4)
}
}
}
