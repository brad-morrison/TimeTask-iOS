//
//  ContentView.swift
//  TimeTask
//
//  Created by Bradley Morrison on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 30),
        GridItem(.flexible(), spacing: 30)
    ]
    
    var body: some View {
        // square cards
        LazyVGrid(columns: columns, spacing: 20) {
            TimerCard()
            TimerCard()
            TimerCard()
            TimerCard()
            TimerCard()
            TimerCard()
            
        }
        .padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
