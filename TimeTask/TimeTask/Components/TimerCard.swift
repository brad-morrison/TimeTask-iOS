//
//  TimerCard.swift
//  TimeTask
//
//  Created by Bradley Morrison on 12/09/2022.
//

import SwiftUI

struct TimerCard: View {
    var task: Task
    @State var isOn = false
    @State var timeAdded = 0
    @State private var timer: Timer?
    
    var body: some View {
        
        Button {
            
            if isOn {
                timer?.invalidate()
            } else {
                timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                        timeAdded += 1
                })
            }
            
            withAnimation(.spring(response: 0.8, dampingFraction: 0.5)) {
                isOn.toggle()
            }
            
        } label: {
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
                        
                        Text(convertSecondsToTime(timeInSeconds:task.time + timeAdded))
                            .font(.largeTitle)
                            .fontWeight(.regular)
                        
                        Spacer()
                        
                        Image(systemName: isOn ? "pause" : "play")
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
                
                .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.white, lineWidth: isOn ? 3 : 0)
                            .zIndex(-1)
                    )
                .scaleEffect(isOn ? 0.95 : 1)
                .shadow(color: isOn ? task.colorA.opacity(0.5) : Color.black.opacity(0.2), radius: 30, x: 0, y: 12)
                .shadow(color: isOn ? task.colorB.opacity(0.5) : Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
            
                
                // title
                Text(task.title)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
        }.buttonStyle(.plain)
        
        
        
        
        
    }
}

struct TimerCard_Previews: PreviewProvider {
    static var previews: some View {
        TimerCard(task: tasks[0])
            //.frame(width: 200, height: 200, alignment: .center)
    }
}
