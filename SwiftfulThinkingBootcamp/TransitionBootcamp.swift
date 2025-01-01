//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcampTests
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom, content: {
            VStack {
                Spacer()
                Button(action: {
                    withAnimation(.default) {
                        showModal.toggle()
                    }
                }, label: {
                    VStack {
                        Text("Connect your device")
                            
                        if showModal {
                            Text("You're connected!")
                        }
                    }
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(showModal ? Color.green : Color.blue)
                    .cornerRadius(10)
                    .animation(.spring(response: 0.5, dampingFraction: 1.0, blendDuration: 0.1), value: showModal)
                })
                Spacer()
            }
            
            if showModal {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.gray.opacity(0.8))
                    .frame(height: UIScreen.main.bounds.height * 0.4)
                    .transition(
                        .asymmetric(
                            insertion: AnyTransition.move(edge: .bottom).animation(.easeIn(duration: 5)),
                            removal: AnyTransition.opacity.animation(.easeOut(duration: 1))
                        )
                    )
            }
            
        })
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    TransitionBootcamp()
}
