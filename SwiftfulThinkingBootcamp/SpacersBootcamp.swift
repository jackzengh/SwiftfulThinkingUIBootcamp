//
//  SpacersBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct SpacersBootcamp: View {
    var body: some View {
        VStack (alignment: .center){
            HStack {
                Image(systemName: "gear")
                    .font(.title)
                Spacer(minLength: 0)
                Image(systemName: "xmark")
                    .font(.title)
            }
            .padding(.horizontal, 20)
            Spacer(minLength: 0)
            Image(systemName: "globe")
                .foregroundColor(Color.blue)
                .font(.system(size: 40))
                .padding(.bottom, 10)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
            Spacer(minLength: 0)
        }

    }
}

#Preview {
    SpacersBootcamp()
}
