//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World! Wagwan")
            .background(Color.red)
//            .frame(width: 200, height: 100, alignment: .center)
//            .background(Color("CustomColor"))
            .frame(width: 300, height: 100, alignment: .center)
            .background(Color.blue)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.green)
    }
}

#Preview { 
    FrameBootcamp()
}
