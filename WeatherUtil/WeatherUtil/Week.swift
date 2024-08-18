//
//  Week.swift
//  WeatherUtil
//
//  Created by PansiluW on 8/18/24.
//

import Foundation
import SwiftUI

//for each day of the week
struct Day: Hashable {
    var name: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class Week{
    static let days: [Day] = [
        Day(name: "Sunday", high: 40, low: 36, icon: "sun.max.fill", color: .orange),
        Day(name: "Monday", high: 38, low: 30, icon: "sun.max.fill", color: .orange),
        Day(name: "Tuesday", high: 38, low: 30, icon: "sun.min.fill", color: .yellow),
        Day(name: "Wednesday", high: 35, low: 28, icon: "sun.min.fill", color: .yellow),
        Day(name: "Thursday", high: 33, low: 25, icon: "cloud.sun.rain.fill", color: .yellow),
        Day(name: "Friday", high: 35, low: 28, icon: "cloud.sun.fill", color: .yellow),
        Day(name: "Saturday", high: 38, low: 30, icon: "sun.max.fill", color: .orange)
    ]
}
// this is related as the data model for the project
