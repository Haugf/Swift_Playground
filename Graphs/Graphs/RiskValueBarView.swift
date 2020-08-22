//
//  BarView.swift
//  Graphs
//
//  Created by Freddy Haug on 8/17/20.
//  Copyright © 2020 Freddy Haug. All rights reserved.
//

import SwiftUI

struct RI: Identifiable {
    var id = UUID()
    var high: Int
    var low: Int
}


struct RiskValueBarView: View {
    
     @State private var showDetail = false
    
    
    let RIPayload = [RI(high: 20, low: 20), RI(high: 20, low: 20)]
    
    var body: some View {
        
        
        
        VStack() {
            
            HStack {
                
                Spacer()
//                VStack(alignment: .leading) {
//                    Text("Hike Name").font(.headline)
//                    Text("0.0 km")
//                }
                
                Spacer()
                
                ForEach(RIPayload) { RI in
                    
                VStack {
                
                        
                    VStack {
                        
                    Capsule()
                        .fill(Color.purple)
                        .frame(width: 25, height: CGFloat(RI.high))
                        
                    Capsule()
                        .fill(Color(hue: 258, saturation: 52, brightness: 56))
                        .frame(width: 25, height: CGFloat(RI.low))
                        
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

struct RiskValueBarView_Previews: PreviewProvider {
    static var previews: some View {
        RiskValueBarView()
    }
}
