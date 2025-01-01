//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 100, height: 100)
//                )
//            .background(
//                Circle()
//                    .fill(
//                        LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing)
//                    )
//                    .frame(width: 200, height: 200)
////                )
//        RoundedRectangle(cornerRadius: 25)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Circle()
//                .fill(
//                    LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
//                )
//                .frame(width: 50, height: 50)
//                , alignment: .topTrailing
//            )
//            .background(
//                RoundedRectangle(cornerRadius: 30)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 200)
//                
//            )
        
        Image(systemName: "paperplane.circle.fill")
            .foregroundColor(Color.white.opacity(0.8))
            .font(.system(size: 40))
        //insert cirlce background
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 80, height: 80)
                    .shadow(color: .purple,radius: 20, x: 0, y: 0)
                // create secondary frame over existing circle frame
                     .frame(width: 90, height: 90)
                // overlay newly created frame with a circle in the bottom left
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 30, height: 30)
                        // overlay this circle with a text bubble
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                            )
                        // overall alignemnt of this circle relative to frame 90x90
                        ,alignment: .bottomTrailing
                )

            )
        
        
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
