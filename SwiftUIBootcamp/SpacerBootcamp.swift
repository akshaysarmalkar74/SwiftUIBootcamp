//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 04/01/26.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        Text("Spacer Bootcamp")
            .font(.largeTitle)
            .fontWeight(.bold)
        
        VStack {
            RoundedRectangle(cornerRadius: 10)
            
            Spacer()
                .frame(width: 8)
                .background(Color.orange)
            
            RoundedRectangle(cornerRadius: 10)
            
            Spacer()
                .frame(width: 8)
                .background(Color.orange)
            
            
            RoundedRectangle(cornerRadius: 10)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SpacerBootcamp()
}
