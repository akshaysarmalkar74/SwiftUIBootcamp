//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 07/12/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showPopup: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            TitleView(title: "Transition Bootcamp", shouldHaveTopPadding: true)
                .padding(.horizontal)
            
            ZStack(alignment: .bottom) {
                VStack {
                    Button {
                        showPopup.toggle()
                    } label: {
                        Text("Show Popup")
                            .foregroundColor(.white)
                            .padding()
                            .background(
                                Color.accent
                                    .cornerRadius(10)
                            )
                    }
                    
                    Spacer()
                }
                
                if showPopup {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 400)
                        .transition(
//                            AnyTransition.move(edge: .bottom)
                            AnyTransition.asymmetric(
                                insertion: .move(edge: .leading),
                                removal: .move(edge: .bottom)
                            )
                        )
                }
            }
            .animation(.easeOut, value: showPopup)
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}

#Preview {
    TransitionBootcamp()
}
