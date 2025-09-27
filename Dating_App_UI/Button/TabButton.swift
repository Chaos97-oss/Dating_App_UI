//
//  TabButton.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct TabButton: View {
var icon: String
var title: String
var isSelected: Bool


var body: some View {
VStack(spacing: 6) {
if isSelected {
ZStack {
Circle()
.fill(Color(hex: "#2C2540"))
.frame(width: 46, height: 46)


Image(systemName: icon)
.font(.system(size: 20, weight: .semibold))
.foregroundColor(Color(hex: "#C9BFFF"))
}
} else {
Image(systemName: icon)
.font(.system(size: 22, weight: .regular))
.foregroundColor(Color.white.opacity(0.6))
}


Text(title)
.font(.system(size: 11, weight: .semibold))
.foregroundColor(isSelected ? Color(hex: "#C9BFFF") : Color.white.opacity(0.5))
}
}
}
