//
//  BlockView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 16.11.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let size: CGFloat
   // let rotation: Double
    
    var body: some View {
        
            Circle()
                .stroke(color, style: StrokeStyle(lineWidth: 3, dash: [5, 10]))
                .frame(width: size, height: size)
                .shadow(color: color, radius: 15, x: 0, y: 0)
                //.rotationEffect(.degrees(rotation))
                //.animation(Animation.linear(duration: 5).repeatForever(autoreverses: false))
    }
}

struct BlockView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .blue, size: 200)
            
    }
}
