//
//  SafeAreaAndButtonStateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 05/12/25.
//

import SwiftUI

struct SafeAreaAndButtonStateBootcamp: View {
    @State private var counter = 0
    
    var body: some View {
        ZStack {
            Color.accent
                .ignoresSafeArea()
            
            VStack {
                Text("Counter: \(counter)")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                
                HStack {
                    Button {
                        counter -= 1
                    } label: {
                        Text("Decrement (-)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.accent)
                            .padding()
                            .background(
                                Color.white
                                    .cornerRadius(10)
                            )
                    }
                    
                    Button {
                        counter += 1
                    } label: {
                        Text("Increment (+)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.accent)
                            .padding()
                            .background(
                                Color.white
                                    .cornerRadius(10)
                            )
                    }
                }
            }
            
        }
    }
}

#Preview {
    SafeAreaAndButtonStateBootcamp()
}
