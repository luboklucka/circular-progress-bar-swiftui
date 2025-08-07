//
//  WrongHalfCircularProgressBar.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct WrongHalfCircularProgressBar: View {
    
    let progress: Float
    var selectionColor: Color?
    
    private var selectionGradient: LinearGradient {
        if let selectionColor {
            return LinearGradient(
                colors: [selectionColor],
                startPoint: .leading,
                endPoint: .trailing
            )
        }
        
        return LinearGradient(
            colors: Color.blueGradientColors,
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.5)
                .stroke(style: .barStrokeStyle(14))
                .foregroundStyle(Color.greySecondary)
                .shadow(
                    color: .greyPrimary,
                    radius: 3
                )
                .rotationEffect(.degrees(180))
            
            Circle()
                .trim(from: 0, to: 0.5)
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(Color.greyPrimary)
                .rotationEffect(.degrees(180))
            
            Circle()
                .trim(from: 0, to: CGFloat(self.progress / 2))
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(selectionGradient)
                .rotationEffect(.degrees(180))
        }
    }
    
}

struct WrongHalfCircularProgressBar_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            Spacer()
            
            WrongHalfCircularProgressBar(
                progress: 1000/10000
            )
            .frame(width: 300, height: 150)
            .background(Color.yellow)
            
            Spacer()
        }
    }
    
}
