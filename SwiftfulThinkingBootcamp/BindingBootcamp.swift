import SwiftUI

struct BindingBootcamp: View {
    
    @State var title = "Button press"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .padding()
            
            ButtonView(title: $title)
        }
        .padding()
    }
}

struct ButtonView: View {
    
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(
            action: {
                title = "Merry Christmas!"
                buttonColor = .red
            },
            label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(buttonColor)
                    )
            }
        )
    }
}

#Preview {
    BindingBootcamp()
}
