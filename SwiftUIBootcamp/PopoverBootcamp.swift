//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/12/25.
//

import SwiftUI

struct PopoverBootcamp: View {
    @State private var showPopup: Bool = false
    
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                showPopup.toggle()
            } label: {
                Text("Show Popup!")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.purple)
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(10)
                    )
            }
            
            /*
            // Method 2: Transition
            if showPopup {
                PopupView(showPopup: $showPopup)
                    .padding(.top, 100)
                    .transition(.move(edge: .bottom))
                    .zIndex(2)
            }
            */
            
            // Method 3: Animation
            PopupView(showPopup: $showPopup)
                .offset(y: showPopup ? 0 : UIScreen.main.bounds.height)
                .padding(.top, 100)
                .transition(.move(edge: .bottom))
                .zIndex(2)
        }
        .animation(.linear, value: showPopup)
        /*
        // Method 1: Sheet
        .sheet(isPresented: $showPopup) {
            PopupView()
        }
        */
    }
}

struct PopupView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Binding var showPopup: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.blue
                .ignoresSafeArea()
            
            Button {
                showPopup.toggle()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .padding()
        }
    }
}

#Preview {
    PopoverBootcamp()
}
