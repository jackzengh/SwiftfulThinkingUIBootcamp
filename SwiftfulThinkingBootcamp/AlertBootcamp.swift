import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = Color.white // State to track background color
    @State var alertType: AlertCases? = nil
    @State var title: String = ""
    @State var description: String = ""
    @State var showModal: Bool = false // State to control modal visibility
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea() // Apply the background color to the entire screen
            
            VStack(spacing: 20) {
                Button(
                    action: {
                        alertType = .success
                        title = "ABG HEAVEN"
                        description = "You did it!"
                        showAlert.toggle()
                    },
                    label: {
                        Text("ABG HEAVEN")
                            .font(.headline)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                )
                Button(
                    action: {
                        alertType = .failure
                        title = "Gooner Hell"
                        description = "You failed!"
                        showAlert.toggle()
                    },
                    label: {
                        Text("Gooner Hell")
                            .font(.headline)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                )
            }
            
            if showModal {
                modalView
            }
        }
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    enum AlertCases {
        case success, failure
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(
                title: Text(title),
                message: Text(description),
                primaryButton: .destructive(Text("Rizz"), action: {
                    backgroundColor = Color.red
                }),
                secondaryButton: .cancel()
            )
        case .failure:
            return Alert(
                title: Text(title),
                message: Text(description),
                primaryButton: .default(Text("Run"), action: {
                    backgroundColor = Color.gray
                    showModal.toggle() // Toggle modal visibility
                }),
                secondaryButton: .cancel()
            )
        default:
            return Alert(title: Text("Error"), message: Text("Something went wrong."))
        }
    }
    
    var modalView: some View {
        ZStack {
            Color.black.opacity(0.5)
                .ignoresSafeArea()
                .onTapGesture {
                    showModal = false
                } // Close modal on tap
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.4)
                .overlay(
                    VStack {
                        Text("This is a Modal!")
                            .font(.headline)
                            .padding()
                        
                        Button(action: {
                            showModal = false
                        }) {
                            Text("Dismiss")
                                .font(.headline)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                )
                .transition(
                    .asymmetric(
                        insertion: AnyTransition.scale(scale: 1.2).combined(with: .opacity)
                            .animation(.interpolatingSpring(stiffness: 100, damping: 10)),
                        removal: AnyTransition.opacity.animation(.easeOut(duration: 0.5))
                    )
                )
        }
    }
}

#Preview {
    AlertBootcamp()
}
