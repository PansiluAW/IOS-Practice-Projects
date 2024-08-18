//
//  ContentView.swift
//  WeatherUtil
//
//  Created by PansiluW on 8/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting = false
    
    var body: some View {
        NavigationStack{
            //creates a table list of items. like the IOS setting app
            /// any string or int can be used provided it's unique like the name KeyPath, that holds the day of the week and  as the data model implements the hashable protocol, self can be used to use the hashkey created by the hashable protocol.
            List(Week.days, id: \.self){ day in
                HStack {
                    Image(systemName: day.icon).colorMultiply(day.color)
                    Text("\(day.high)°C")
                    NavigationLink(day.name, value: day)
                }
            }
            .navigationTitle("Kaduwela, Sri Lanka")
            .navigationDestination(for: Day.self) { day in
                Text(day.name)
                Button("More Info") {
                    isPresenting = true
                }
                .padding()
                .sheet(isPresented: $isPresenting, content: {
                    return Text("High \(day.high)°C Low \(day.low)°C")
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
