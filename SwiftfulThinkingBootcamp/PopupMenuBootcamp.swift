import SwiftUI

struct MenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue // State to track background color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "house.fill")
                
                Spacer()
                
                Menu {
                    Button(action: {
                        print("Share tapped")
                    }) {
                        Label("Share", systemImage: "paperplane")
                    }
                    
                    Button(action: {
                        backgroundColor = .yellow
                    }) {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                    Button(role: .destructive, action: {
                        backgroundColor = .red
                    }) {
                        Label("Delete", systemImage: "trash")
                    }
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.white)
                }
            }
            
            Text("Home")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Return to Home")
                .font(.subheadline)
        }
        .frame(width: 200, height: 100, alignment: .leading)
        .padding(20)
        .background(backgroundColor)
        .cornerRadius(25)
        .foregroundColor(.white)
    }
}

#Preview {
    MenuBootcamp()
}
