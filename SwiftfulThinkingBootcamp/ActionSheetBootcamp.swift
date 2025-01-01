//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 1/1/2025.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var postOwnership: PostOwnership = .others
    
    enum PostOwnership {
        case mine
        case others
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                
                Spacer()
                Button(action: {
                    // create some way of checking whether the post is mine or someone elses
                    
                    postOwnership = .mine
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                        .accentColor(.black)
                })
            }
            .padding()
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            print("Share tapped")
        }
        let copyButton: ActionSheet.Button = .default(Text("Copy")) {
            print("Copy tapped")
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            print("Delete tapped")
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        // implement switch cases such that the pop up is different based on postOwnership variable 
        
        switch postOwnership {
        case .mine:
            return ActionSheet(
                title: Text("ABG RIZZ"),
                message: Text("WHAT RIZZ METHOD:"),
                buttons: [shareButton, copyButton, deleteButton, cancelButton]
            )
        case .others:
            return ActionSheet(
                title: Text("ABG RIZZ"),
                message: Text("WHAT RIZZ METHOD:"),
                buttons: [shareButton, copyButton, cancelButton]
            )
        }
        
    }
}

#Preview {
    ActionSheetBootcamp()
}
