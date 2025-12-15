//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 15/12/25.
//

import SwiftUI

enum AlertTypeForTextFieldBootcamp {
    case emptyUsername
    case shortUsername
    
    var title: String {
        switch self {
            case .emptyUsername:
                return "Empty Username"
            case .shortUsername:
                return "Short Username"
        }
    }
    
    var message: String {
        switch self {
            case .emptyUsername:
                return "Please enter a username."
            case .shortUsername:
                return "Username must be at least 3 characters long."
        }
    }
}

struct TextFieldBootcamp: View {
    @State private var username: String = ""
    @State private var enteredName = [String]()
    @State private var showAlert = false
    @State private var alertType: AlertTypeForTextFieldBootcamp = .emptyUsername
    
    var body: some View {
        VStack {
            TitleView(title: "TextView Bootcamp", shouldHaveTopPadding: true)
            
            VStack(spacing: 16) {
                TextField("Enter your username", text: $username)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding()
                    .background(
                        Color.gray.opacity(0.1)
                            .cornerRadius(8)
                    )
                
                Button {
                    guard !username.isEmpty else {
                        alertType = .emptyUsername
                        showAlert = true
                        return
                    }
                    
                    guard username.count > 3 else {
                        alertType = .shortUsername
                        showAlert = true
                        return
                    }
                    
                    enteredName.append(username)
                    username = ""
                } label: {
                    Text("Submit")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.blue
                                .cornerRadius(8)
                        )
                }

            }
            .padding(.horizontal)
            
            ForEach(enteredName, id: \.self) { name in
                Text(name)
            }
            
            Spacer()
        }
        .alert(isPresented: $showAlert) {
            getAlert(alertType: alertType)
        }
    }
    
    private func getAlert(alertType: AlertTypeForTextFieldBootcamp) -> Alert {
        Alert(
            title: Text(alertType.title),
            message: Text(alertType.message),
            dismissButton: .default(Text("OK"))
        )
    }
}

#Preview {
    TextFieldBootcamp()
}
