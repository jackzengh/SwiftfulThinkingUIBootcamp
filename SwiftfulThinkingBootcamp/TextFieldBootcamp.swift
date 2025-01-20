//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 2/1/2025.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your username here", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .foregroundColor(Color.red)
                    .cornerRadius(10)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text(textIsAppropriate() ? "Save" : "This is an invalid input")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(textIsAppropriate() ? Color.blue : Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                })
                .disabled(!textIsAppropriate())
                
                Spacer()
                
                VStack(spacing: 10) {
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                    }
                }
                .frame(minWidth: 100, minHeight: 10)
                .background(Color.red)
                .padding()
                
                Spacer()
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline) // Use inline mode for custom navigation bar
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "gear")
                }
            }
        }
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldText.count >= 3
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
