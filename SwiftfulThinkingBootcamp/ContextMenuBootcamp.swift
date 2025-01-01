import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue // State to track background color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "house.fill")
                Spacer()
                Button(action: {
                    print("Ellipsis tapped")
                }) {
                    Image(systemName: "ellipsis")
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
        .contextMenu {
            Button(action: {
                // Action for Share
                print("Share tapped")
            }) {
                Label("Share", systemImage: "flame.fill")
            }
            
            Button(action: {
                // Action for Edit
                backgroundColor = .yellow
            }) {
                Label("Edit", systemImage: "pencil")
            }
            
            Button(role: .destructive, action: {
                // Action for Delete
                backgroundColor = .red
            }) {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
