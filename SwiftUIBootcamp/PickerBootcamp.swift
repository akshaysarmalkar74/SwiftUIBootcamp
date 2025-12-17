//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/12/25.
//

import SwiftUI

struct PickerBootcamp: View {
    @State private var age = 18
    
    var body: some View {
        VStack {
            TitleView(title: "Picker Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                Picker("Select your age", selection: $age) {
                    ForEach(18..<90, id: \.self) { idx in
                        Text("\(idx)")
                            .tag(idx)
                    }
                }
                .pickerStyle(.menu)
            }
        }
    }
}

#Preview {
    PickerBootcamp()
}
