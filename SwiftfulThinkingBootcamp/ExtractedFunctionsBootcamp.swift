//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    var backgroundColor: Color = Color.red
    
    var body: some View {
        
        //content
        contentLayer
    }
    
    var contentLayer: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
