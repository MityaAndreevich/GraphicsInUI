//
//  GradientRectangles.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 15.11.2021.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        ZStack {
            ForEach(0..<3) { iteration in
                Rectangle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.green, .blue]),
                            startPoint: UnitPoint(x: 0, y: 1),
                            endPoint: UnitPoint(x: 1, y: 0)
                        )
                    )
                    .rotationEffect(.degrees(Double(iteration) * 60))
            }
            Image(systemName: "airplane")
                .resizable()
                .opacity(0.5)
                .rotationEffect(.degrees(-90))
        }
    }
}

struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
            .frame(width: 200, height: 200)
    }
}
