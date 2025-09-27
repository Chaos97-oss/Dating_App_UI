//
//  ChatsHeaderView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct ChatsHeaderView: View {
var body: some View {
HStack(spacing: 12) {
VStack(alignment: .leading, spacing: 4) {
HStack(spacing: 8) {
Text("Chats")
.font(.system(size: 22, weight: .bold))


Text("Pending")
.font(.system(size: 20, weight: .semibold))
.opacity(0.4)
}


Text("The ice is broken. Time to hit it off")
.font(.system(size: 12))
.foregroundColor(Color.white.opacity(0.5))
}


Spacer()
}
}
}
