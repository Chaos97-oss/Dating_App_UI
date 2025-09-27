//
//  StarField.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct StarField: View {
// static positions to keep look consistent across devices
let points: [CGPoint] = [
CGPoint(x: 0.12, y: 0.08), CGPoint(x: 0.3, y: 0.12), CGPoint(x: 0.6, y: 0.04),
CGPoint(x: 0.8, y: 0.14), CGPoint(x: 0.22, y: 0.25), CGPoint(x: 0.45, y: 0.45),
CGPoint(x: 0.78, y: 0.38), CGPoint(x: 0.9, y: 0.62), CGPoint(x: 0.15, y: 0.7),
CGPoint(x: 0.55, y: 0.77), CGPoint(x: 0.34, y: 0.88)
]


var body: some View {
GeometryReader { geo in
ForEach(0..<points.count, id:\.self) { idx in
Circle()
.frame(width: idx % 3 == 0 ? 1.8 : 1.2, height: idx % 3 == 0 ? 1.8 : 1.2)
.foregroundColor(Color.white.opacity(0.85))
.position(x: points[idx].x * geo.size.width, y: points[idx].y * geo.size.height)
}
}
}
}
