//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 10/12/25.
//

import SwiftUI

enum AlertType {
    case optional
    case singleButton
}

struct AlertBootcamp: View {
    @State private var alertType = AlertType.optional
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Alert Bootcamp")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Button {
                    alertType = .optional
                    showAlert.toggle()
                } label: {
                    AlertButtonView(title: "Show Optional Alert")
                }
                
                Button {
                    alertType = .singleButton
                    showAlert.toggle()
                } label: {
                    AlertButtonView(title: "Show Single Button Alert")
                }
            }
        }
        .alert(isPresented: $showAlert) {
            getAlert(type: alertType)
        }
    }
    
    private func getAlert(type: AlertType) -> Alert {
        switch type {
            case .optional:
                return Alert(
                    title: Text("Update Now"),
                    message: Text("A new version is available. Please update to continue."),
                    primaryButton: .default(Text("Update"), action: {
                        print("Update Button Tapped")
                    }),
                    secondaryButton: .destructive(Text("Cancel"))
                )
            case .singleButton:
                return Alert(
                    title: Text("Update"),
                    message: Text("A new version is available. Do you want to update it?"),
                    dismissButton: .default(Text("Update"), action: {
                        print("Open URL Here")
                    })
                )
        }
    }
}

struct AlertButtonView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundStyle(.purple)
            .padding()
            .background(
                Color.white
                    .cornerRadius(10)
            )
    }
}

#Preview {
    AlertBootcamp()
}
