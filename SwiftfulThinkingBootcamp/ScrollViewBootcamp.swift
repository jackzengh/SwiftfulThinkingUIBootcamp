//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: true, content: {
            LazyVStack {
                ForEach(0..<10) { index in
                        ScrollView (.horizontal, showsIndicators: false, content: {
                            LazyHStack {
                                ForEach(0..<10) { index in
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color.blue.opacity(0.3))
                                        .frame(width: 150, height: 150)
                                        .padding()
                                        .shadow(color: .blue, radius: 10, x: 0, y: 0)
                                }
                            }
                        })
                    }
                }
            })
        }
    }

#Preview {
    ScrollViewBootcamp()
}
