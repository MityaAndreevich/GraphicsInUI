//
//  InitialsWholeView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 20.11.2021.
//

import SwiftUI

struct InitialsWholeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            ZStack {
                CircleView(color: .red, size: size, rotation: 180)
                CircleView(color: .blue, size: size - 20, rotation: -180)
                InitialsView(colorForD: .brown, colorForL: .indigo)
                    .offset(y: size / 3)
            }
            .scaleEffect(0.9)
        }
    }
}

struct InitialsWholeView_Previews: PreviewProvider {
    static var previews: some View {
        InitialsWholeView()
    }
}
