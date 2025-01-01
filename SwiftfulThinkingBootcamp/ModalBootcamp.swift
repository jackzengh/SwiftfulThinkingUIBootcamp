//
//  ModalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 29/12/2024.
//

import SwiftUI

struct ModalBootcamp: View {
    
    @State var showScreen: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, World!")
                
                Spacer()
                
                Button(action: {
                    showScreen.toggle()
                }, label: {
                    Text("Show Modal")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
            .padding(.vertical, 100)
            
            // TRANSITION ALTERNATIVE OF ADDING A NEW SCREEN --> ALLOWS YOU TO ADD MULTIPLE ON ONE FILE
            // USE Z INDEX TO MAKE TRANSITION OUTWARD SMOOTHER
            
            ZStack {
                if showScreen {
                    NewScreen(showScreen: $showScreen)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0)
        // Present the modal as an overlay
//        .fullScreenCover(isPresented: $showScreen, content: {
//            NewScreen()
//        })
        
        }
    }
}

struct NewScreen: View {
    
//    @Environment(\.dismiss) var dismiss
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
         
            
            VStack {
                HStack {
                    Button(action :{
//                        dismiss()
                        showScreen.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .renderingMode(.original)
                            .font(.title)
                    })
                    .padding()
                    Spacer()
                }
                
                Spacer()
                
                Text("Welcome to the New Screen!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ModalBootcamp()
}
