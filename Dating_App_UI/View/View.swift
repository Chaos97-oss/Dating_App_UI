//
//  View.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct MatchesView: View {
var body: some View {
ZStack {
BackgroundView()
.ignoresSafeArea()


VStack(spacing: 18) {
TopHeaderView()
.padding(.horizontal, 18)


CardsScrollView()
.frame(height: 210)


ChatsHeaderView()
.padding(.horizontal, 18)


ChatsListView()


Spacer(minLength: 6)


BottomTabBar(selected: .matches)
.padding(.horizontal, 12)
.padding(.bottom, 8)
}
.padding(.top, 8)
}
}
}
