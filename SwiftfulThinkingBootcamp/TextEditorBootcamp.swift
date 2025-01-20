//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 20/1/2025.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "hey there"
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 15) {
                    TextEditor(text: $textEditorText)
                        .frame(height:500)
                        .colorMultiply(.gray.opacity(0.3))
                        .cornerRadius(15)
                    Button(action: {
                        saveText()
                    }, label: {
                        Text("Save")
                            .padding()
                            .background(Color.blue.cornerRadius(15))
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                    })
                }
                .padding()
                .navigationTitle("Yo")
            }
        }
        
    }
    
    func saveText() {
        dataArray.append(textEditorText)
        textEditorText = ""
    }
}

#Preview {
    TextEditorBootcamp()
}
