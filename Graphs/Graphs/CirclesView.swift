//
//  CirclesView.swift
//  Graphs
//
//  Created by Freddy Haug on 9/29/20.
//  Copyright © 2020 Freddy Haug. All rights reserved.
//

import SwiftUI

struct CirclesView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.red)
                .position(x: 30, y: 10)
                .frame(width: 100, height:50)
            Circle()
                .fill(Color.green)
                .frame(width: 60, height: 50)
                .position(x: 65, y: -47)
                .fixedSize()
            Circle()
                .fill(Color.orange)
                .position(x: 60, y: -60)
                .frame(width: 100, height: 50)
        }
    }

}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}


// Think of this group of shapes as a triangle
//  If a circle grows, the center of the circle moves further back
//  Move the circle back and grow the
