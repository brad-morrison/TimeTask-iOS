//
//  ContentView.swift
//  TimeTask
//
//  Created by Bradley Morrison on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView {
            content
        }
    }
}

var content: some View {
    VStack {
        
        HStack {
            Text("Tasks")
                .fontWeight(.heavy)
                .font(.title)
            
            Spacer()
        }
        .padding(.horizontal)
        
        // square cards
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(tasks) { task in
                TimerCard(task: task)
            }
        }
        .padding()
    }
    .padding(.top, 60)
}

let columns = [
    GridItem(.flexible(), spacing: 16),

    GridItem(.flexible(), spacing: 16)
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
