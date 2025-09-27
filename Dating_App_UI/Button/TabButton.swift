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
        VStack(spacing: 4) {
            if title == "Profile" {
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 28, height: 28)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(isSelected ? Color.blue : .clear, lineWidth: 2)
                    )
            } else {
                Image(systemName: icon)
                    .font(.system(size: 22))
                    .foregroundColor(isSelected ? .blue : .gray)
            }

            Text(title)
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(isSelected ? .blue : .gray)
        }
    }
}
