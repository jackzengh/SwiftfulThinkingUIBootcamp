import SwiftUI

struct TernaryBootcamp: View {
    
    @State var title = "Button press"
    @State var isStartingState = true
    @State var buttonColor = Color.gray

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            
            HStack {
                // Toggle Button
                Button(action: {
                    isStartingState.toggle()
                }) {
                    Text("Toggle".uppercased())
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(.blue)
                        )
                }
                
                // Save Button
                Button(action: {
                    title = isStartingState ? "Saved Successfully!" : "Unsuccessful Save :("
                    buttonColor = isStartingState ? .green : .red
                }) {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(buttonColor)
                        )
                }
            }
            .padding()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
