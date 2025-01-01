import SwiftUI

struct ListBootcamp: View {
    
    // EDIT + DELETE + MOVE + custom add button ---> LIST FUNCTIONALITIES
    // nav title, list-style, nav bar items ---> main visual edits
    
    @State private var fruits: [String] = [
        "apples", "oranges", "bananas", "coconuts"
    ]
    
    @State private var veggies: [String] = [
        "carrots", "broccoli", "spinach", "potatoes"
    ]
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                // Fruits Section
                Section(
                    header: HStack {
                        Image(systemName: "flame.fill")
                        Text("Fruits")
                    }
                    .font(.title2)
                    .foregroundColor(.purple),
                    content: {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .padding(.vertical, 10)
                        }
                        // MUST BE ADDED TO THE ACTUAL LIST FUNCTION
                        .onDelete(perform: deleteFruits)
                        .onMove(perform: moveFruits)
                    }
                )
                
                // Veggies Section
                Section(
                    header:
                        Text("Veggies"),
                    content: {
                        ForEach(veggies, id: \.self) { veggie in
                            Text(veggie.capitalized)
                                .padding(.vertical, 10)
                        }
                        .onDelete(perform: deleteVeggies)
                        .onMove(perform: moveVeggies)
                    }
                )
            }
            //NAVIGATION EDITS ARE ADDED TO THE LIST / STACK INSIDE
            .navigationTitle("YOU ARE IN THE LIST")
            .listStyle(DefaultListStyle())
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    showSheet.toggle()
                }) {
                    Text("Add")
                        .font(.headline)
                        .padding(6)
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(8)
                }
            )
            .sheet(isPresented: $showSheet) {
                AddSheet()
            }
        }
        
    }
    
    // Fruits Section Functions
    func deleteFruits(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveFruits(indexSet: IndexSet, offset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: offset)
    }
    
    // Veggies Section Functions
    func deleteVeggies(indexSet: IndexSet) {
        veggies.remove(atOffsets: indexSet)
    }
    
    func moveVeggies(indexSet: IndexSet, offset: Int) {
        veggies.move(fromOffsets: indexSet, toOffset: offset)
    }
}

struct AddSheet: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                HStack {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                            .renderingMode(.original)
                            .font(.title)
                            .padding()
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                Text("Device Connected!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Image(systemName: "paperplane.circle.fill")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

#Preview {
    ListBootcamp()
}
