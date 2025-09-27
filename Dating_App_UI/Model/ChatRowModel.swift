//
//  ChatRowModel.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
struct ChatRowModel: Identifiable {
let id = UUID()
let avatar: String
let name: String
let preview: String
let time: String
let isNewChat: Bool
let isYourMove: Bool
let hasNewVoice: Bool
let unreadCount: Int
let isFavorite: Bool

static var sampleData: [ChatRowModel] = [
    ChatRowModel(avatar: "avatar2", name: "Jessica", preview: "▶︎ •၊၊||၊|။||||။‌‌‌‌‌၊|• 0:05", time: "6:21 pm", isNewChat: true, isYourMove: false, hasNewVoice: true, unreadCount: 0, isFavorite: true),
ChatRowModel(avatar: "avatar3", name: "Amanda", preview: "Lol I love house music too", time: "6:21 pm", isNewChat: false, isYourMove: true, hasNewVoice: false, unreadCount: 0, isFavorite: false),
ChatRowModel(avatar: "avatar4", name: "Sila", preview: "You: I love the people there tbh, have you been?", time: "Wed", isNewChat: false, isYourMove: false, hasNewVoice: false, unreadCount: 6, isFavorite: false),
ChatRowModel(avatar: "avatar6", name: "Marie", preview: "Hahaha that's interesting, it does seem like people here are startin...", time: "6:21 pm", isNewChat: false, isYourMove: true, hasNewVoice: false, unreadCount: 4, isFavorite: false),
]
}
