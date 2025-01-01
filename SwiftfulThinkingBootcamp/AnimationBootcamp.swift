//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isPressed: Bool = true
    
    var body: some View {
        Text("Button Pressed: \(isPressed.description)")
        Spacer()
        Button(
            action: {
                withAnimation(Animation.default.delay(0.1)) {
                    isPressed.toggle()
                }
                // alternatively assign it to shape by using withAnimation similarly on a shape
            },
            label: {
                RoundedRectangle(cornerRadius: isPressed ? 25 : 50)
                    .fill(isPressed ? Color.green : Color.red)
                    .frame(
                        width: 100,
                        height: 100)
                // ORDER MATTERS!! -> rotate 360 and while rotating, offset 100
                    .rotationEffect(.degrees(isPressed ? 0 : 360))
                    .offset(y: isPressed ? 0 : 100)
                    
            })

        Spacer()
        
    }
}

#Preview {
    AnimationBootcamp()
}
