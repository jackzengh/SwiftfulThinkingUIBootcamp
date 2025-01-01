//
//  ExtractSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {

    var body: some View {
        ZStack {
            
            Color.gray
                .ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer : some View {
        HStack {
            ExtractedView(title: "Apples", color: .red, count: 2)
            ExtractedView(title: "Oranges", color: .orange, count: 2)
            ExtractedView(title: "Bananas", color: .yellow, count: 2)
        }
        
    }
}

#Preview {
    ExtractSubviewBootcamp()
}


struct ExtractedView: View {
    
    let title: String
    let color: Color
    let count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(25)
    }
}
