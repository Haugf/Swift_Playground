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
    
    
    let nowPayload = [Now(red: 40, orange: 40, green: 25), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 40, orange: 20, green: 55), Now(red: 65, orange: 35, green: 25), Now(red: 100, orange: 60, green: 55), Now(red: 125, orange: 15, green: 25)]
    var body: some View {
        
        
        
        VStack() {
            
            HStack {
                
                Spacer()
//                VStack(alignment: .leading) {
//                    Text("Hike Name").font(.headline)
//                    Text("0.0 km")
//                }
                
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
                        
                    }.frame(height: 100)
                        
                        
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
//
//            if showDetail {
//                HikeDetail(hike: hike)
//            }
        }
         .fixedSize()
        
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
