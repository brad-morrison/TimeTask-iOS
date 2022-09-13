//
//  TimerCard.swift
//  TimeTask
//
//  Created by Bradley Morrison on 12/09/2022.
//

import SwiftUI

struct TimerCard: View {
    let teal = Color(hex: "43CEA2")
    let blue = Color(hex: "185A9D")
    var task: Task
    
    var body: some View {
        VStack {
            
            // tile
            VStack {
                
                
                    VStack(alignment: .center) {
                       
                        HStack() {
                            Spacer()
                            Text(task.icon)
                                .font(.largeTitle)
                        }
                        
                        Spacer()
                        
                        Text("13:33")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                        
                        Spacer()
                        
                        Text("II")
                            .font(.title)
                            .padding(.bottom, 10)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: .infinity)
                
            }
            .frame(width: .infinity, height: 200)
            .background(LinearGradient(colors: [task.colorA, task.colorB], startPoint: .topLeading, endPoint: .bottomTrailing))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 12)
        .shadow(color: .black.opacity(0.3), radius: 2, x: 0, y: 1)
        
            
            // title
            Text(task.title)
                .font(.headline)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
        }
        
        
        
    }
}

struct TimerCard_Previews: PreviewProvider {
    static var previews: some View {
        TimerCard(task: tasks[0])
            //.frame(width: 200, height: 200, alignment: .center)
    }
}
