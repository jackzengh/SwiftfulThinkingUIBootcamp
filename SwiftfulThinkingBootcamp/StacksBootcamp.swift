//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        // Hstack()
        ZStack {
 // Noe background is imilar to Z-stack for 2 item overlays
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 150, height: 150)

            VStack(alignment: .center, spacing: 10, content: {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
            })
        }
        
            
        
    }
}

#Preview {
    StacksBootcamp()
}
