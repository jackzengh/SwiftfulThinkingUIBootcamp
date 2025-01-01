//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 26/12/2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("everlab")
            .resizable()
        // fit will keep in the frame, fill will make sure that top and bottom fill the frame so may extend outward
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
//            .clipped()
//            .cornerRadius(30)
    }
}

#Preview {
    ImagesBootcamp()
}
