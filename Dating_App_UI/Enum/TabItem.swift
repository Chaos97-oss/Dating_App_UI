//
//  TabItem.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
enum TabItem {
case cards, bonfire, matches, profile
}


struct BottomTabBar: View {
var selected: TabItem


var body: some View {
HStack {
Spacer()


TabButton(icon: "square.grid.2x2", title: "Cards", isSelected: selected == .cards)


Spacer()


TabButton(icon: "flame.fill", title: "Bonfire", isSelected: selected == .bonfire)


Spacer()


TabButton(icon: "bubble.left.and.bubble.right.fill", title: "Matches", isSelected: selected == .matches)


Spacer()


TabButton(icon: "person.crop.circle", title: "Profile", isSelected: selected == .profile)


Spacer()
}
.frame(height: 72)
.background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark))
.cornerRadius(18)
}
}

