//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 11/01/26.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var showAlert = false
    @State private var alertType: AlertType = .error
    
    enum AlertType {
        case error
        case success
        
        var title: Text {
            switch self {
                case .error:
                    return Text("Error Alert")
                case .success:
                    return Text("Success Alert")
            }
        }
        
        var message: Text {
            switch self {
                case .error:
                    return Text("Something went wrong.")
                case .success:
                    return Text("Action completed successfully.")
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Alert Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack {
                Button {
                    alertType = .error
                    showAlert.toggle()
                } label: {
                    Text("Error")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(
                            Color.red
                                .cornerRadius(8)
                        )
                }
                
                Button {
                    alertType = .success
                    showAlert.toggle()
                } label: {
                    Text("Success")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(
                            Color.green
                                .cornerRadius(8)
                        )
                }
            }
        }
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    private func getAlert() -> Alert {
        Alert(
            title: alertType.title,
            message: alertType.message,
            primaryButton: alertType == AlertType.error ? .destructive(Text("Cancel")) : .default(Text("OK")),
            secondaryButton: alertType == AlertType.error ?  .default(Text("Retry")) : .cancel()
        )
    }
}

#Preview {
    AlertBootcamp()
}
