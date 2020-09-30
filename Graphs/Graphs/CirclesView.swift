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
                .frame(width: 100, height: 50)
            Circle()
                .fill(Color.green)
                .frame(width: 200, height: 90)
            Circle()
                .fill(Color.orange)
                .frame(width: 100, height: 50)
        }
    }

}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}
