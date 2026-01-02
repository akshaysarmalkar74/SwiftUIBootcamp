//
//  ImagesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/01/26.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        VStack {
            Text("Images Bootcamp")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Image("Coffee")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}

#Preview {
    ImagesBootcamp()
}
