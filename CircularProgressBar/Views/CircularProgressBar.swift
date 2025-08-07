//
//  CircularProgressBar.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct CircularProgressBar: View {
    
    let progress: Float
    var selectionColor: Color
            
    var body: some View {
        ZStack {
            Circle()
                .stroke(style: .barStrokeStyle(14))
                .foregroundStyle(Color.greySecondary)
                .shadow(
                    color: .greyPrimary,
                    radius: 3
                )
            
            Circle()
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(Color.greyPrimary)
            
            Circle()
                .trim(from: 0, to: CGFloat(self.progress))
                .stroke(style: .barStrokeStyle(12))
                .foregroundStyle(selectionColor)
                .rotationEffect(.degrees(90))
        }
    }
    
}

struct CircularProgressBar_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack {
            Spacer()

            CircularProgressBar(
                progress: 0.1,
                selectionColor: Color.redPrimary
            )
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
            
            Spacer()
        }
    }
    
}
