//
//  ProgressBarsView.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct ProgressBarsView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            HalfCircularProgressView(
                progressAmount: 7000,
                totalAmount: 10000
            )
            .frame(width: 300, height: 150)
            
            CircularProgressView(
                progressAmount: 3000,
                totalAmount: 15000
            )
            .frame(width: 300, height: 300)
        }
    }
    
}

#Preview {
    ProgressBarsView()
}
