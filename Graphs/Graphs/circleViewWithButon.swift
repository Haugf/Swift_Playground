//
//  ContentView.swift
//  Graphs
//
//  Created by Freddy Haug on 8/17/20.
//  Copyright © 2020 Freddy Haug. All rights reserved.
//

import SwiftUI

struct circleViewWithButton: View {
    @State private var animationAmount: CGFloat = 1
    
    @State private var animationAmount2: CGFloat = 1
    
    @State private var mX: CGFloat = 100
    @State private var mY: CGFloat = 260
    
    @State private var m2X: CGFloat = 200
    @State private var m2Y: CGFloat = 10

    var body: some View {
        
        VStack {
                Button("Red"){
                    self.animationAmount += 1
                }
                .padding(20)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount)
                .animation(.default)
                .position(x: mX, y: mY)
                
                Button("Green"){
                    self.animationAmount2 += 1
                }
                .padding(20)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount2)
                .animation(.default)
                .position(x: m2X, y: m2Y)
        }
    }
}

struct circleViewWithButton_Previews: PreviewProvider {
    static var previews: some View {
        circleViewWithButton()
    }
}
