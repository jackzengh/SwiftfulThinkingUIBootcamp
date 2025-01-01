//
//  PaddingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .padding(.bottom, 10)
            Text("This is what we do, and here is a description of exactly what this app will do for you! Click here to get started")
                .font(.caption)
        }
        //padding is an editor being applied to the VStack so it exists outside of it like Rectangle().padding()
        .padding(.all, 20)
        .padding(.vertical, 30)
        .background(
            Color.white
            // note how order really matters here
                .cornerRadius(15)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 25,
                    x: 0, y: 0)

        )
        //this padding operation is being applied to the background
        .padding(.horizontal, 50)


    }
}

#Preview {
    PaddingBootcamp()
}
