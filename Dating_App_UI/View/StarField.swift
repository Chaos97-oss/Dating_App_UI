//
//  StarField.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct StarField: View {
    
    let points: [CGPoint] = [
        CGPoint(x: 0.12, y: 0.08), CGPoint(x: 0.3, y: 0.12), CGPoint(x: 0.6, y: 0.04),
        CGPoint(x: 0.8, y: 0.14), CGPoint(x: 0.22, y: 0.25), CGPoint(x: 0.45, y: 0.45),
        CGPoint(x: 0.78, y: 0.38), CGPoint(x: 0.9, y: 0.62), CGPoint(x: 0.15, y: 0.7),
        CGPoint(x: 0.55, y: 0.77), CGPoint(x: 0.34, y: 0.88)
    ]
    
    var body: some View {
        GeometryReader { geo in
            ForEach(0..<points.count, id: \.self) { idx in
                Circle()
                    .fill(Color.white)
                    .frame(width: idx % 3 == 0 ? 3 : 2,
                           height: idx % 3 == 0 ? 3 : 2)
                    .position(
                        x: points[idx].x * geo.size.width,
                        y: points[idx].y * geo.size.height
                    )
                    .shadow(color: .white.opacity(0.9), radius: idx % 3 == 0 ? 4 : 2)
                    .opacity(0.7)
                    .overlay(
                        Circle()
                            .fill(Color.white)
                            .frame(width: idx % 3 == 0 ? 3 : 2)
                            .opacity(0.5)
                            .scaleEffect(
                                CGFloat.random(in: 0.9...1.1),
                                anchor: .center
                            )
                            .animation(
                                Animation.easeInOut(duration: Double.random(in: 1.5...3))
                                    .repeatForever(autoreverses: true),
                                value: UUID()
                            )
                    )
            }
        }
    }
}
