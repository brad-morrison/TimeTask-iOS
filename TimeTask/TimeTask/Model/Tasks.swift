//
//  Tasks.swift
//  TimeTask
//
//  Created by Bradley Morrison on 13/09/2022.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var icon: String
    var colorA: Color
    var colorB: Color
    var time: Int
}

var tasks = [
    Task(title: "Tidying", icon: "🐦", colorA: Color(hex: "43CEA2"), colorB: Color(hex: "185A9D"), time: 45),
    Task(title: "Eating", icon: "🙈", colorA: Color(hex: "757F9A"), colorB: Color(hex: "D7DDE8"), time: 45),
    Task(title: "Sleeping", icon: "🦋", colorA: Color(hex: "5C258D"), colorB: Color(hex: "4389A2"), time: 45),
    Task(title: "Web Design", icon: "🌸", colorA: Color(hex: "134E5E"), colorB: Color(hex: "71B280"), time: 45),
    Task(title: "Social Media", icon: "🍀", colorA: Color(hex: "614385"), colorB: Color(hex: "516395"), time: 45)
]
