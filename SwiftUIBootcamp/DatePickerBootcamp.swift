//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 17/12/25.
//

import SwiftUI

struct DatePickerBootcamp: View {
    // Minimum selectable date: Jan 1, 2025
    private let minDate: Date = {
        var components = DateComponents()
        components.year = 2025
        components.month = 1
        components.day = 1
        return Calendar.current.date(from: components) ?? Date()
    }()
    
    private let maxDate: Date = {
        var components = DateComponents()
        components.year = 2025
        components.month = 12
        components.day = 31
        return Calendar.current.date(from: components) ?? Date()
    }()
    
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            TitleView(title: "DatePicker Bootcamp", shouldHaveTopPadding: true)
            
            VStack {
                DatePicker(
                    "Select in aRange",
                    selection: $selectedDate,
                    in: minDate...maxDate,
                    displayedComponents: .date
                )
                
                DatePicker(
                    "Select Birthtime",
                    selection: $selectedDate,
                    displayedComponents: .hourAndMinute
                )
                .datePickerStyle(.automatic)
                .environment(\.locale, Locale(identifier: "en_GB"))
            }
            
            
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
