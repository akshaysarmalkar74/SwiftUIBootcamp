//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/01/26.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State private var username: String = ""
    @State private var usernames: [String] = []
    @State private var alertType: AlertType = .emptyUsername
    @State private var showAlert = false
    
    enum AlertType {
        case emptyUsername
        case shortUsername
        
        var message: Text {
            switch self {
                case .emptyUsername:
                    return Text("Username cannot be empty")
                case .shortUsername:
                    return Text("Username must be at least 3 characters long")
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("Enter Username", text: $username)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Color.gray
                            .opacity(0.1)
                            .cornerRadius(8)
                    )
                
                Button {
                    if isUsernameValid() {
                        usernames.append(username)
                        username = ""
                    } else if username.isEmpty {
                        alertType = .emptyUsername
                        showAlert.toggle()
                    } else { //  Not Valid & Not Empty
                        alertType = .shortUsername
                        showAlert.toggle()
                    }
                } label: {
                    Text("Submit")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.accentColor
                                .cornerRadius(8)
                        )
                }
                
                List(usernames, id: \.self) { username in
                    Text(username)
                }
            }
            .padding()
            .navigationTitle("Text Bootcamp")
            .alert(isPresented: $showAlert, content: getAlert)
        }
    }
    
    private func isUsernameValid() -> Bool {
        return username.count >= 3
    }
    
    private func getAlert() -> Alert {
        Alert(
            title: Text("Error"),
            message: alertType.message
        )
    }
}

#Preview {
    TextFieldBootcamp()
}
