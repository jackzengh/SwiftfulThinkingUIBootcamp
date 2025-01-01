//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 26/12/2024.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//            .fill(Color.blue)
//            .foregroundColor(.pink)
//            .stroke(Color.black, lineWidth: 5)
//            .trim(from: 0, to: 0.75)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [80]))
//            .stroke(Color.purple, lineWidth: 30)
//        Ellipse()
//            .trim(from: 0.2, to: 1)
//            .frame(width:200, height: 100)
            
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 25)
            .trim(from: 0.4, to: 0.8)
            .frame(width: 200, height: 200, alignment: .center)
            
    }
}

#Preview {
    ShapesBootcamp()
}
