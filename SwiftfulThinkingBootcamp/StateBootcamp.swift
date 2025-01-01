import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor = Color.white
    @State var count: Int = 0
    @State var title: String = "SwiftUI State"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            
            Text("Count: \(count)")
                .font(.headline)
                .padding()
            
            HStack {
                Button(action: {
                    count += 1
                    title = "Incremented to \(count)"
                    backgroundColor = .blue
                }) {
                    Text("Increment")
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                Button(action: {
                    if count > 0 {
                        count -= 1
                        title = "Decremented to \(count)"
                        backgroundColor = .red
                    }
                }, label: {
                    Text("Decrement")
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                })
            }
            
            Button(action: {
                count = 0
                title = "SwiftUI State"
                backgroundColor = .green
            }) {
                Text("Reset")
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Make the VStack expand to fill the screen
        .background(backgroundColor) // Apply the dynamic background color here
    }
}

#Preview {
    StateBootcamp()
}
