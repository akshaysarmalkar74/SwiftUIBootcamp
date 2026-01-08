//
//  SheetAndFullScreenCoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/01/26.
//

import SwiftUI

struct RedSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(Color.red)
                    .padding(12)
                    .background(
                        Color.white
                            .cornerRadius(8)
                    )
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SheetAndFullScreenCoverBootcamp: View {
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button {
                showSheet = true
            } label: {
                Text("Open Sheet")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.green)
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(8)
                    )
            }
        }
        .fullScreenCover(isPresented: $showSheet) {
            RedSheetView()
        }
        /*
        .sheet(isPresented: $showSheet) {
            RedSheetView()
        }
        */
    }
}

#Preview {
    SheetAndFullScreenCoverBootcamp()
}
