//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 29/12/2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
                .font(.largeTitle)
            
            Button(action: {
                showSheet.toggle()
            },
            label: {
                Text("Connect your Device!")
                    .font(.headline)
                    .foregroundStyle(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(30)
            })
        }
        // you can use ONE fullScreenCover OR a sheet
        // NO CONDITIONAL LOGIC INSIDE OF THESE CALLS
//        .sheet(isPresented: $showSheet, content: {
//            DeviceSheet()
//        })
        .fullScreenCover(isPresented: $showSheet, content: {
            DeviceSheet()
        })
    }
}

struct DeviceSheet: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color(.blue)
                .opacity(0.1)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .renderingMode(.original)
                            .font(.title)
                            .padding()
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                Text("Device Connected!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
