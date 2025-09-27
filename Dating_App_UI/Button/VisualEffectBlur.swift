//
//  VisualEffectBlur.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import Foundation
import SwiftUI
struct VisualEffectBlur: UIViewRepresentable {
var blurStyle: UIBlurEffect.Style


func makeUIView(context: Context) -> UIVisualEffectView {
return UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
}


func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}
