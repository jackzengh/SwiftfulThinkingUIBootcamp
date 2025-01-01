//
//  ButtonsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 28/12/2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title = "Button press"

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            Button(
                action: {
                    self.title = "Merry Christmas!"
                },
                label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .overlay(
                                    Text("Press")
                                        .foregroundColor(.blue)
                                        .font(.headline)
                        )
                    )
                }
            )
            }
        }
    }


#Preview {
    ButtonsBootcamp()
}
