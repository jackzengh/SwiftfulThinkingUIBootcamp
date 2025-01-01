//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 26/12/2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(gradient: Gradient(colors: [.red, .blue, .purple, .orange]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                RadialGradient(colors: [.red, .blue, .purple, .orange], center: .topLeading, startRadius: 0, endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [.red, .blue, .purple, .orange]), center: .bottomTrailing, angle: .degrees(45)) 
            )
            .frame(width: 200, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
