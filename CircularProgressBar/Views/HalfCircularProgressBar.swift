//
//  HalfCircularProgressBar.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct HalfCircularProgressBar: View {
    
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
            HalfCircle(lineWidth: 14)
                .stroke(style: .barStrokeStyle(14))
                .foregroundStyle(Color.greySecondary)
                .shadow(
                    color: .greyPrimary,
                    radius: 3
                )
            
            HalfCircle()
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(Color.greyPrimary)
            
            HalfCircle()
                .trim(from: 0, to: CGFloat(self.progress))
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(selectionGradient)
        }
    }
    
}

struct HalfCircularProgressBar_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            Spacer()
            
            HalfCircularProgressBar(
                progress: 9000/10000
            )
            .frame(width: 300, height: 150)
            .background(Color.yellow)
            
            Spacer()
        }
    }
    
}
