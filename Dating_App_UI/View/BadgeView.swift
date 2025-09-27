//
//  BadgeView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct BadgeView: View {
var text: String
var body: some View {
Text(text)
.font(.system(size: 12, weight: .semibold))
.padding(.vertical, 6)
.padding(.horizontal, 10)
.background(Capsule().fill(Color(hex: "#6E5DF0")))
.foregroundColor(.white)
}
}
