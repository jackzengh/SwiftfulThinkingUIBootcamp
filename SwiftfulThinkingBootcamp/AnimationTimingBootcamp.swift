//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isPressed: Bool = true
    
    var body: some View {
        VStack {
            // Text acting as a button
            Text(isPressed ? "Press Me" : "Release Me")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .onTapGesture {
                    withAnimation {
                        isPressed.toggle()
                    }
                }
            
            Spacer()
            
            // First RoundedRectangle with Linear Animation
            RoundedRectangle(cornerRadius: isPressed ? 25 : 50)
                .fill(isPressed ? Color.green : Color.red)
                .frame(width: isPressed ? 100 : 150, height: isPressed ? 100 : 150)
                .animation(.linear(duration: 2), value: isPressed)
            
            Spacer()
            
            // Second RoundedRectangle with EaseIn Animation
            RoundedRectangle(cornerRadius: isPressed ? 25 : 50)
                .fill(isPressed ? Color.green : Color.red)
                .frame(width: isPressed ? 100 : 150, height: isPressed ? 100 : 150)
                .animation(.easeIn(duration: 2), value: isPressed)
            
            Spacer()
            
            // Third RoundedRectangle with Spring Animation
            RoundedRectangle(cornerRadius: isPressed ? 25 : 50)
                .fill(isPressed ? Color.green : Color.red)
                .frame(width: isPressed ? 100 : 150, height: isPressed ? 100 : 150)
                .animation(.spring(response: 1.0, dampingFraction: 0.5, blendDuration: 1.0), value: isPressed)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
