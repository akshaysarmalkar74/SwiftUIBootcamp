//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Akshay Sarmalkar on 16/01/26.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State private var selectedDate: Date = Date()
    private var minDate: Date { Calendar.current.date(byAdding: .year, value: -3, to: Date())! }
    private var maxDate: Date { Calendar.current.date(byAdding: .year, value: +3, to: Date())! }
    
    var body: some View {
        VStack {
            Text("Date Picker Bootcamp")
                .font(.title)
                .fontWeight(.bold)
            
            DatePicker(
                "Select Date",
                selection: $selectedDate,
                in: minDate...maxDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(.compact)
        }
        .padding()
    }
}

#Preview {
    DatePickerBootcamp()
}
