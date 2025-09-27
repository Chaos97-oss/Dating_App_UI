//
//  ChatRowView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct ChatRowView: View {
var model: ChatRowModel


var body: some View {
HStack(alignment: .center, spacing: 12) {
ZStack(alignment: .bottomTrailing) {
Image(model.avatar)
.resizable()
.scaledToFill()
.frame(width: 56, height: 56)
.clipShape(Circle())
.overlay(Circle().stroke(Color.black.opacity(0.5), lineWidth: 1))


if model.hasNewVoice {
// small waveform + duration
Circle()
.fill(Color(hex: "#2C2A35"))
.frame(width: 64, height: 26)
.offset(x: 0, y: 16)
.opacity(0) // invisible; we keep avatar appearance only
}
}


VStack(alignment: .leading, spacing: 6) {
HStack(alignment: .center, spacing: 8) {
Text(model.name)
.font(.system(size: 16, weight: .bold))


if model.isNewChat {
Capsule()
.fill(Color(hex: "#6E5DF0"))
.overlay(Text("• New chat").font(.system(size: 12, weight: .semibold)).foregroundColor(.white))
.frame(height: 26)
}


if model.isYourMove {
Capsule()
.fill(Color(hex: "#2E2D35"))
.overlay(Text("Your move").font(.system(size: 12, weight: .semibold)).foregroundColor(Color.white.opacity(0.9)))
.frame(height: 26)
}


Spacer()


Text(model.time)
.font(.system(size: 12, weight: .semibold))
.foregroundColor(Color(hex: "#9D94FF"))
}


HStack(alignment: .center) {
Text(model.preview)
.font(.system(size: 14))
.foregroundColor(Color.white.opacity(0.75))
.lineLimit(1)


Spacer()

    if model.isFavorite {
    ZStack {
    Circle()
    .fill(Color(hex: "#4B3AE6"))
    .frame(width: 22, height: 22)
    Image(systemName: "star.fill")
    .font(.system(size: 12, weight: .bold))
    .foregroundColor(.black)
            }
        }
    
if model.unreadCount > 0 {
ZStack {
Circle()
.fill(Color(hex: "#4B3AE6"))
.frame(width: 22, height: 22)


Text("\(model.unreadCount)")
.font(.system(size: 12, weight: .semibold))
.foregroundColor(.white)
}
}
}
}
}
.padding(.vertical, 6)
}
}
