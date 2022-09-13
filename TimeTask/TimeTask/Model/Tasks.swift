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
    var on: Bool
}

var tasks = [
    Task(title: "Tidying", icon: "🐦", colorA: Color(hex: "43CEA2"), colorB: Color(hex: "185A9D"), time: 30, on: true),
    Task(title: "Eating", icon: "🙈", colorA: Color(hex: "757F9A"), colorB: Color(hex: "D7DDE8"), time: 60, on: false),
    Task(title: "Sleeping", icon: "🦋", colorA: Color(hex: "5C258D"), colorB: Color(hex: "4389A2"), time: 90, on: false),
    Task(title: "Web Design", icon: "🌸", colorA: Color(hex: "134E5E"), colorB: Color(hex: "71B280"), time: 120, on: false),
    Task(title: "Social Media", icon: "🍀", colorA: Color(hex: "757F9A"), colorB: Color(hex: "D7DDE8"), time: 19800, on: false),
    Task(title: "Social Media", icon: "🦋", colorA: Color(hex: "614385"), colorB: Color(hex: "516395"), time: 80420, on: false),
    Task(title: "Social Media", icon: "🐦", colorA: Color(hex: "134E5E"), colorB: Color(hex: "71B280"), time: 0, on: false)
]
