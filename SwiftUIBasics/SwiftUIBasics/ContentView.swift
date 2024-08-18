//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by PansiluW on 8/18/24.
//

import SwiftUI

struct ContentView: View {
    //In SwiftUI, variables that are updated at runtime needs to be binding variables. Normal variables cannot be updated during runtime.
//    @State var hello = "Hello World" //state variable is a another type of binding variable.
//    var body: some View {
//        VStack{
//            TextField("Type your name", text: $hello) //the dollar sign before the variable denotes that the variable will be modified by the text field.
//            Text(hello)
//                .font(.title)
//        }
//        .padding()
//    }
    @State var red = 1.0
    @State var green = 1.0
    @State var blue = 1.0
    var body: some View {
            VStack{
                Text("Color Picker")
                    .font(.title)
                    .fontWeight(.light)
                Image(systemName: "dog.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color(red: red, green: green, blue: blue))
                
                ColorSliderView(colorValue: $red, color: .red)
                ColorSliderView(colorValue: $green, color: .green)
                ColorSliderView(colorValue: $blue, color: .blue)
            }
            .padding()
        }
    //if a state variable (which is updated at runtime, while making updates to the variable the views gets updated as well) needs to be updated by a child view, the child view must utilize a binding variable for it.
}

#Preview {
    ContentView()
}

