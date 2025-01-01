//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Jack Zheng on 26/12/2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        VStack (spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.primary
                    //                Color(UIColor.secondarySystemBackground)
                    Color("CustomColor")
                )
                .frame(width: 200, height: 200, alignment: .center)
            //            .shadow(radius: 10)
                .shadow(color: Color("CustomColor").opacity(0.6), radius: 10, x: -10, y: -20)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
    //                Color.primary
    //                Color(UIColor.secondarySystemBackground)
                    Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
                )
                .frame(width: 200, height: 200, alignment: .center)
    //            .shadow(radius: 10)
                // using Color(#colorLiteral(red...))
                .shadow(color: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), radius: 10, x: 10, y: 20)
        }
            
    }
}

#Preview {
    ColorsBootcamp()
}
