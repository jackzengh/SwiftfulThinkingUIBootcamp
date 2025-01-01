//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.red)
                .frame(maxWidth: .infinity, minHeight: 300)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]
            ) {
                Section(
                    header: Text("Section 1")
                        .font(.title)
                        .padding()
                        .background(Color.gray.opacity(0.8))
                        .cornerRadius(10)
                ) {
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            )
                    }
                }
                
                Section(
                    header: Text("Section 2")
                        .font(.title)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                ) {
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.green)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("\(index)")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                            )
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    GridBootcamp()
}
