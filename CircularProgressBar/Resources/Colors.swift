//
//  Colors.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

extension Color {
    
    static let greyPrimary = Color(red: 225/255, green: 225/255, blue: 225/255)
    static let greySecondary = Color.black.opacity(0.15)
    static let redPrimary = Color(red: 220/255, green: 52/255, blue: 52/255)
    static let blueGradientColors = [
        Color(red: 66/255, green: 161/255, blue: 234/255),
        Color(red: 103/255, green: 118/255, blue: 227/255)
    ]
    
}

extension StrokeStyle {
    
    static func barStrokeStyle(_ width: CGFloat) -> StrokeStyle {
        return StrokeStyle(
            lineWidth: width,
            lineCap: .round,
            lineJoin: .round
        )
    }
    
}

