//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/12/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                isPresented.toggle()
            } label: {
                Text("Show Sheet")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.green)
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(10)
                    )
            }
        }
        // Sheet
        /*
        .sheet(isPresented: $isPresented) {
            RedViewBootcamp()
        }
        */
        .fullScreenCover(isPresented: $isPresented) {
            RedViewBootcamp()
        }
    }
}

struct RedViewBootcamp: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
