//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Lachie", "Jack", "Jerry", "Sachin"]
    
    var body: some View {
        
        HStack {
            VStack(spacing: 10) {
                ForEach(data.indices) { index in
                    Text("\(data[index]): \(index)")
                }
 
                }
            
            VStack {
                ForEach(0..<3) { index in
                    Circle()
                        .frame(height:30)
                }
            }
            }
        }
        
    }

#Preview {
    ForEachBootcamp()
}
