//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        // method 1: embed in z-stack and the use Color + edgesIgnore
//        ZStack(alignment: .top) {
//            // background
//            Color.red
//                .ignoresSafeArea(.all)
//            
//            // foreground
//            Text("Hello, World!")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(.white)
//                .padding()
//                .background(Color.blue)
//                .cornerRadius(10)
//        }
        ScrollView {
            // background
            Color.red
                .ignoresSafeArea(.all)
            
            // foreground
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            
            ForEach(0..<50) { index in
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )
    }
}

#Preview {
    SafeAreaBootcamp()
}
