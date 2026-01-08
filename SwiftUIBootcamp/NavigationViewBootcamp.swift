//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 09/01/26.
//

import SwiftUI

// Issue: Toolbar shown for Split Second on 2nd Push
struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: RedSheetView()) {
                Text("Push Text View")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(
                        Color.green
                            .cornerRadius(8)
                    )
            }
            .navigationTitle("Navigation Bootcamp")
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        NavigationLink(destination: Text("Profile")) {
                            Image(systemName: "person.fill")
                        }
                        
                        NavigationLink(destination: Text("Settings")) {
                            Image(systemName: "gearshape")
                        }
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Text("Add")) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
