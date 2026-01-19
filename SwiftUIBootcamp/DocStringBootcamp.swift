//
//  DocStringBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 19/01/26.
//

import SwiftUI

struct DocStringBootcamp: View {
    @State private var fruits: [String] = [
        "Apples",
        "Bananas",
        "Oranges",
        "Pears",
        "Grapes"
    ]
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            List(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            .navigationTitle("DocString Bootcamp")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showAlert.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                    }
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert(title: "Alert Title", message: "This is for testing purposes only.")
            }
        }
    }
    
    /// Function that returns an alert with the title and string
    ///
    /// It is a function that returns an alert
    ///
    /// - Parameter title: Title of Alert
    /// - Parameter message: Message of Alert
    /// - Returns : An alert with title, message and default button
    ///
    private func getAlert(title: String, message: String) -> Alert {
        return Alert(
            title: Text(title),
            message: Text(message)
        )
    }
}

#Preview {
    DocStringBootcamp()
}
