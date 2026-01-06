//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 06/01/26.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    @State private var counter = 0
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("Counter :")
                    
                    Spacer()
                    
                    Text("\(counter)")
                }
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(Color.red)
                .padding(30)
                .frame(maxWidth: .infinity)
                .background(
                    Color.white
                        .clipShape(Capsule())
                )
                .padding()
                
                Spacer()
                   
                Button {
                    counter += 1
                } label: {
                    Text("Increment")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .padding(.horizontal)
                        .background(
                            Color.green
                                .clipShape(Capsule())
                        )
                }
            }
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
