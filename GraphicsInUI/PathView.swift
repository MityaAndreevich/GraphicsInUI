//
//  PathView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 15.11.2021.
//

import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let sideSize = min(width, height)
            let nearLine = sideSize * 0.1
            let farLine = sideSize * 0.9
            let middleLine = sideSize / 2
            
            Path { path in
                path.move(to: CGPoint(x: middleLine + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middleLine - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path {path in
                path.move(to: CGPoint(x: middleLine, y: nearLine))
                path.addLine(to: CGPoint(x: middleLine, y: farLine))
            }
            .stroke(
                Color.white,
                style: StrokeStyle(lineWidth: 3, dash: [height / nearLine]
                )
            )
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
