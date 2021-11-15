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
            let closestPoint = sideSize * 0.1
            let farPoint = sideSize * 0.9
            let middlePoint = sideSize / 2
            
            Path { path in
                path.move(to: CGPoint(x: middlePoint + closestPoint, y: closestPoint))
                path.addLine(to: CGPoint(x: farPoint, y: farPoint))
                path.addLine(to: CGPoint(x: closestPoint, y: farPoint))
                path.addLine(to: CGPoint(x: middlePoint - closestPoint, y: closestPoint))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
        }
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView()
            .frame(width: 200, height: 200)
    }
}
