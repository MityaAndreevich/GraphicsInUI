//
//  CurvesView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 15.11.2021.
//

import SwiftUI

struct CurvesView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let sideSize = min(width, height)
            let nearLine = sideSize * 0.1
            let farLine = sideSize * 0.9
            let middleLine = sideSize / 2
            
            Path { path in
                path.move(to: CGPoint(x: middleLine, y: nearLine))
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: middleLine),
                    control: CGPoint(x: sideSize, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middleLine, y: farLine),
                    control: CGPoint(x: sideSize, y: sideSize)
                    )
                path.addQuadCurve(
                    to: CGPoint(x: nearLine, y: middleLine),
                    control: CGPoint(x: 0, y: sideSize)
                )
                path.addQuadCurve(
                    to: CGPoint(x: middleLine, y: nearLine),
                    control: CGPoint(x: 0, y: 0)
                )
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.white, .yellow]),
                    center: .center,
                    startRadius: sideSize * 0.05,
                    endRadius: sideSize * 0.6
                )
            )
            Path { path in
                path.addArc(
                    center: CGPoint(x: nearLine, y: nearLine),
                    radius: middleLine,
                    startAngle: .degrees(90),
                    endAngle: .degrees(0),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: nearLine),
                    radius: middleLine,
                    startAngle: .degrees(180),
                    endAngle: .degrees(90),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: farLine, y: farLine),
                    radius: middleLine,
                    startAngle: .degrees(270),
                    endAngle: .degrees(180),
                    clockwise: true
                )
                path.addArc(
                    center: CGPoint(x: nearLine, y: farLine),
                    radius: middleLine,
                    startAngle: .degrees(0),
                    endAngle: .degrees(270),
                    clockwise: true
                )
                path.closeSubpath()
            }
            .stroke(Color.orange, lineWidth: 2)
        }
    }
}

struct CurvesView_Previews: PreviewProvider {
    static var previews: some View {
        CurvesView()
            .frame(width: 200, height: 200)
    }
}
