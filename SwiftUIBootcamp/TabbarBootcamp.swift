//
//  TabbarBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/01/26.
//

import SwiftUI

struct TabbarBootcamp: View {
    @State private var selectedTab: Int = 1
    private var imageNames = [
        "heart.fill",
        "person.fill",
        "star.fill",
        "cart.fill",
        "person.crop.circle"
    ]
    
    var carousel: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            
            TabView {
                ForEach(imageNames, id: \.self) { imgName in
                   Image(systemName: imgName)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(Color.white)
                        .padding(50)
                }
            }
            .frame(height: 300)
            .background(
                RadialGradient(
                    colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))],
                    center: .center,
                    startRadius: 40,
                    endRadius: 200
                )
            )
            .tabViewStyle(.page)
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Home", systemImage: "house.fill", value: 0) {
                ZStack {
                    Color.red
                        .ignoresSafeArea()
                    
                    Button {
                        selectedTab = 2
                    } label: {
                        Text("Go to Menu")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                            .background(
                                Color.white
                                    .cornerRadius(8)
                            )
                    }
                }
            }
            
            Tab("Favorites", systemImage: "bookmark.fill", value: 1) {
                carousel
            }
            
            Tab("Favorites", systemImage: "line.horizontal.3", value: 2) {
                Color.green
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    TabbarBootcamp()
}
