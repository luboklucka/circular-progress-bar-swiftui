//
//  HalfCircle.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct HalfCircle: Shape {
    
    var lineWidth: CGFloat = 14.0
    
    func path(in rect: CGRect) -> Path {
        let inset = lineWidth / 2
//        let width = rect.width - lineWidth / 2
//        let height = rect.height - lineWidth / 2
        let width = rect.width
        let height = rect.height

        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.maxY - inset),
            radius: min(width, height),
            startAngle: .degrees(180),
            endAngle: .degrees(0),
            clockwise: false
        )
        return path
    }
    
}
