import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        // IMAGINE THE NAVIGATION VIEW AS EVERYTHING, THE STACK IS WHAT'S INSIDE OF THE MIDDLE OF THE SCREEN - TO ADD NAV ICONS, NAV TITLES, EDIT NAV VISIBILITY --> THESE ARE ALL EXTERNAL MODIFICATIONS THAT GO OUTSIDE OF THE STACK INSIDE OF THE NAV VIEW
        
        // you only ever need one, never put a nav view in a nav view!!!
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    // very useful -> adds new screen seamlessly that fills in from the left, it also has a back button built in for you already, labelled the navigation title
                    
                    // automatically adds space for the nav title instead of putting it to the very top of the screen
                    NavigationLink(destination: OtherScreen()) {
                        Text("Press here")
                            .foregroundStyle(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(25)
                    }
                    .padding(.top, 20)
                    
                    Text("Hello, World!")
                }
            }
            .navigationTitle("ALL INBOXES")
            .navigationBarTitleDisplayMode(.automatic)
            // toolbar edits can be done from here now and not insude of the body
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink(destination: OtherScreen()) {
                        Image(systemName: "person.fill")
                            .accentColor(.black)
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: OtherScreen()) {
                        Image(systemName: "gear")
                            .accentColor(.black)
                    }
                }
            }
        }
    }
}

struct OtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Hello from Other Screen!")
                .padding()
            
            Button("Dismiss") {
                dismiss()
            }
            .padding()
        }
        // rememeber that the NavigationView is on the VStack or whatever the view is inside your body --> so put .navigation modifiers on it
        .navigationBarHidden(true)
    }
    
}

#Preview {
    NavigationViewBootcamp()
}
