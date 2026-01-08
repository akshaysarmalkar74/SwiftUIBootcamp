//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 08/01/26.
//

import SwiftUI

struct RedSheetViewForPopover: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var showSheet: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button {
                showSheet = false
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
        .padding(.top, 80)
    }
}

struct PopoverBootcamp: View {
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            VStack {
                Button {
                    showSheet.toggle()
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
                
                Spacer()
            }
        
            // Method 3
            RedSheetViewForPopover(showSheet: $showSheet)
                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
                .transition(AnyTransition.move(edge: .bottom))
                .animation(.linear)
            
            /*
            // Method 2
            if showSheet {
                RedSheetViewForPopover(showSheet: $showSheet)
                    .transition(AnyTransition.move(edge: .bottom))
                    .animation(.linear)
            }
            */
            
            /*
             // Method 1
             .sheet(isPresented: $showSheet) {
             RedSheetViewForPopover()
             }
             */
        }
    }
}

#Preview {
    PopoverBootcamp()
}
