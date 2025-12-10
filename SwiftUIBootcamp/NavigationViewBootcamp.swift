//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 10/12/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.yellow
                    .ignoresSafeArea(edges: .all)
                
                NavigationLink(
                    destination:
                        ColorNavigtionView(
                            title: "Red View",
                            color: .red
                        )
                    ) {
                    Text("Go to Hello World")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.yellow)
                        .padding()
                        .background(
                            Color.black
                                .cornerRadius(10)
                        )
                }
            }
            .navigationTitle(
                Text("Navigation View")
            )
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination:
                    ColorNavigtionView(
                        title: "Green View",
                        color: .green
                    )) {
                        Image(systemName: "plus")
                    }
                }
            }
            .toolbarTitleDisplayMode(.automatic)
        }
    }
}

struct ColorNavigtionView: View {
    var title: String
    var color: Color
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea(edges: .all)
            
            NavigationLink(destination: RedViewBootcamp()) {
                Text("Go Back!!")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(color)
                    .padding()
                    .background(
                        Color.black
                            .cornerRadius(10)
                    )
            }
        }
        .navigationTitle(
            Text(title)
        )
    }
}

#Preview {
    NavigationViewBootcamp()
}
