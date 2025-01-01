//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 26/12/2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! Guys I think its time to go HAAAARDDDD".uppercased())
//            .font(.title)
//            .fontWeight(.semibold)
//            .bold()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough()
            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 200, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
