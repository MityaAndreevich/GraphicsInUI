//
//  IllusionView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 16.11.2021.
//

import SwiftUI

struct InitialsView: View {
    
    let colorForD: Color
    let colorForL: Color
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size =  min(width, height)
            let closeLine = size * 0.1
            let farLine = size * 0.9
            let closerFarLine = size * 0.4
            let middleLine = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: closeLine, y: closeLine))
                path.addQuadCurve(to: CGPoint(x: closeLine, y: farLine), control: CGPoint(x: farLine * 1.3, y: middleLine))
            }
            .stroke(colorForD, lineWidth: 10)
            
            Path { path in
                path.move(to: CGPoint(x: closerFarLine, y: closeLine))
                path.addLine(to: CGPoint(x: closerFarLine, y: farLine))
            }
            .stroke(colorForL, lineWidth: 10)
            
            Path { path in
                path.move(to: CGPoint(x: closerFarLine, y: farLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                
            }
            .stroke(colorForL, lineWidth: 10)
            .offset(x: -5)
            
        }
        .scaleEffect(0.7)
    }
}

struct IllusionView_Previews: PreviewProvider {
    static var previews: some View {
        InitialsView(colorForD: .orange, colorForL: .red)
            .frame(width: 200, height: 200)
    }
}
