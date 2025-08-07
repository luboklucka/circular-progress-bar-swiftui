//
//  CircularProgressView.swift
//  CircularProgressBar
//
//  Created by Lubo Klucka on 03/08/2025.
//

import SwiftUI

struct CircularProgressView: View {
    
    let progressAmount: Float
    let totalAmount: Float
    
    var body: some View {
        ZStack {
            CircularProgressBar(
                progress: progressAmount / totalAmount,
                selectionColor: .redPrimary
            )
            
            infoView()
                .frame(maxWidth: 158)
        }
    }
    
    @ViewBuilder
    func infoView() -> some View {
        VStack(spacing: 4) {
            Text(String(format: "%.0f", progressAmount))
                .font(
                    .system(size: 28, weight: .bold)
                )
            
            Text("out of \(String(format: "%.0f", totalAmount))")
                .font(.system(size: 14))
            
            Divider()
            
            Text("remaining \(String(format: "%.0f", totalAmount - progressAmount))")
                .font(.system(size: 14))

        }
    }
    
}

#Preview {
    CircularProgressView(
        progressAmount: 5000,
        totalAmount: 10000
    )
    .frame(width: 300, height: 300)
}
