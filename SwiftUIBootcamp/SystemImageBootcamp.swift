//
//  SystemImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 02/01/26.
//

import SwiftUI

struct SystemImageBootcamp: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("System Images")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(alignment: .bottom, spacing: 20) {
                Image(systemName: "house.fill")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(Color.yellow)
                    .frame(width: 50, height: 50)
                
                Image(systemName: "person.fill.badge.plus")
                    .symbolRenderingMode(.palette)
                    .resizable()
                    .foregroundStyle(.accent)
                    .frame(width: 50, height: 50)
                
                Image(systemName: "mail.fill")
                    .resizable()
                    .foregroundStyle(Color.pink)
                    .frame(width: 60, height: 50)
            }
        }
    }
}

#Preview {
    SystemImageBootcamp()
}
