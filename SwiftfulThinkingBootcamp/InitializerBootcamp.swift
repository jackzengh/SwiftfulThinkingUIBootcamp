//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 27/12/2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let count: Int
    let backgroundColor: Color
    let title: String
    
    enum Fruit {
        case apple, orange, banana
    }
    
    init(count: Int, fruits: Fruit) {
        self.count = count
        switch fruits {
        case .apple:
            self.title = "Apple"
            self.backgroundColor = .red
        case .orange:
            self.title = "Orange"
            self.backgroundColor = .orange
        case .banana:
            self.title = "Banana"
            self.backgroundColor = .yellow
        }
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(backgroundColor)
            .frame(width: 200, height: 200)
            .overlay(
                VStack(spacing: 10) {
                    Text("\(count)")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .underline()
                    Text(title)
                        .font(.title)
                        .foregroundColor(Color.white)
                }
            )
    }
}

#Preview {
    HStack {
        InitializerBootcamp(count: 1, fruits: .apple)
        InitializerBootcamp(count: 2, fruits: .orange)
    }

}
