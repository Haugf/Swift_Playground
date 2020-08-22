//
//  BarView.swift
//  Graphs
//
//  Created by Freddy Haug on 8/17/20.
//  Copyright © 2020 Freddy Haug. All rights reserved.
//

import SwiftUI

struct Now: Identifiable {
    var id = UUID()
    var red: Int
    var orange: Int
    var green: Int
}


struct BarView: View {
    
     @State private var showDetail = false
    
    
    let nowPayload = [Now(red: 40, orange: 40, green: 25), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 40, orange: 20, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 125, orange: 15, green: 25), Now(red: 40, orange: 40, green: 25), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 40, orange: 20, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 125, orange: 15, green: 25)]
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Spacer()
                
                Spacer()
                
                ForEach(nowPayload) { now in
                VStack {
                    VStack {
                        Capsule()
                            .fill(Color.red)
                            .frame(width: 25, height: CGFloat(now.red))
                            
                        Capsule()
                            .fill(Color.orange)
                            .frame(width: 25, height: CGFloat(now.orange))
                            
                        Capsule()
                            .fill(Color.green)
                            .frame(width: 25, height: CGFloat(now.green))
                        }.frame(height: 100).offset(x: 0, y: -105)
                    VStack {
                        Capsule()
                            .fill(Color.purple)
                            .frame(width: 25, height: 60)
                            
                        Capsule()
                            .fill(Color.pink)
                            .frame(width: 25, height: 12)

                        }.frame(height: 100).offset(x: 0, y: 75)
                    }
                }
                

                
                Spacer()
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                        .animation(.spring())
                }
                
            
            }
            
        }

        
        
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
