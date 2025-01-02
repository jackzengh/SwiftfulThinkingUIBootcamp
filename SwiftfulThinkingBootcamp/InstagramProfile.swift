import SwiftUI

// MARK: - Main App View
struct InstagramApp: View {
    var body: some View {
        TabView {
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

// MARK: - Profile View
struct ProfileView: View {
    // Grid layout for posts
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    @State var backgroundColor: Color = .gray
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Top Profile Section
                    VStack(spacing: 16) {
                        // Profile Picture and Stats
                        HStack(spacing: 16) {
                            // Profile Picture
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .foregroundColor(.blue)
                            
                            // Stats
                            HStack(spacing: 20) {
                                VStack {
                                    Text("32")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Posts")
                                        .font(.caption)
                                }
                                VStack {
                                    Text("1.5k")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Followers")
                                        .font(.caption)
                                }
                                VStack {
                                    Text("120")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    Text("Following")
                                        .font(.caption)
                                }
                            }
                            .padding()
                        }
                        .padding(.bottom, 20)
                        
                        // Profile Name and Bio
                        VStack(alignment: .leading, spacing: 15) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Jack Zheng")
                                    .font(.headline)
                                Text("🚀 Aspiring developer | 🍎 Swift enthusiast")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        
                        // Edit Profile Button
                        NavigationLink(destination: EditProfileView()) {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                    
                    Divider()
                    
                    // Posts Grid Section
                    LazyVGrid(columns: columns, spacing: 6) {
                        ForEach(0..<30) { index in
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(backgroundColor).opacity(0.2))
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Image(systemName: index % 2 == 0 ? "heart.fill" : "star.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(20)
                                        .foregroundColor(index % 2 == 0 ? .red : .yellow)
                                )
                                .contextMenu {
                                    Button(action: { print("Share tapped") }) {
                                        Label("Share", systemImage: "flame.fill")
                                    }
                                    
                                    Button(action: { backgroundColor = .yellow }) {
                                        Label("Edit", systemImage: "pencil")
                                    }
                                    
                                    Button(action: { backgroundColor = .white }) {
                                        Label("See User", systemImage: "person")
                                    }
                                    
                                    Button(action: { backgroundColor = .orange }) {
                                        Label("Find New Friends", systemImage: "paperplane")
                                    }
                                    
                                    Button(role: .destructive, action: { backgroundColor = .red }) {
                                        Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Profile")
        }
    }
}

// MARK: - Home View
struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Home Screen")
                .font(.title)
                .navigationTitle("Home")
        }
    }
}

// MARK: - Search View
struct SearchView: View {
    var body: some View {
        NavigationView {
            Text("Search Screen")
                .font(.title)
                .navigationTitle("Search")
        }
    }
}

// MARK: - Edit Profile View
struct EditProfileView: View {
    @State private var name: String = "Jack Zheng"
    @State private var bio: String = "🚀 Aspiring developer | 🍎 Swift enthusiast"
    @State private var image: Image? = Image(systemName: "person.crop.circle.fill")
    
    var body: some View {
        VStack {
            // Profile Picture
            image?
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.blue)
                .padding()
            
            Button("Change Picture") {
                // Add functionality to change picture
            }
            .padding()
            
            // Form to Edit Name and Bio
            Form {
                Section(header: Text("Name")) {
                    TextField("Enter your name", text: $name)
                }
                
                Section(header: Text("Bio")) {
                    TextField("Enter your bio", text: $bio)
                }
            }
            
            // Save Changes Button
            Button("Save Changes") {
                print("Changes saved!")
            }
            .font(.headline)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.top, 20)
        }
        .navigationTitle("Edit Profile")
    }
}

#Preview {
    InstagramApp()
}
