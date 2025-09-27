//
//  ChatsListView.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI

struct ChatsListView: View {
let chats: [ChatRowModel] = ChatRowModel.sampleData


var body: some View {
ScrollView(showsIndicators: false) {
LazyVStack(spacing: 16) {
ForEach(chats) { chat in
ChatRowView(model: chat)
.padding(.horizontal, 18)
}
}
.padding(.vertical, 6)
}
}
}
