//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by PansiluW on 8/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Weather")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundStyle(.gray)
            HStack{
                Image(systemName: "sun.max.fill")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Sunday!")
            }
            Image{
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
