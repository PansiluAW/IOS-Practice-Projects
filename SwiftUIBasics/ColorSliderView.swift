//
//  ColorSliderView.swift
//  SwiftUIBasics
//
//  Created by PansiluW on 8/18/24.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var colorValue: Double
    var color: Color
    var body: some View {
        HStack{
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(color)
            Slider(value: $colorValue).colorMultiply(.gray)
        }
    }
}

#Preview {
    ColorSliderView(colorValue: .constant(0.5), color: .gray)
}
