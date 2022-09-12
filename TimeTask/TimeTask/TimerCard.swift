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
    
    var body: some View {
        VStack {
            ZStack {
                VStack(alignment: .center) {
                   
                    HStack() {
                        Spacer()
                        Text("🐦")
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    Text("18:31")
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
            .frame(width: 200, height: 200, alignment: .center)
            
            
        }
        .frame(width: .infinity, height: 200)
        .background(LinearGradient(colors: [teal, blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        
    }
}

struct TimerCard_Previews: PreviewProvider {
    static var previews: some View {
        TimerCard()
    }
}
