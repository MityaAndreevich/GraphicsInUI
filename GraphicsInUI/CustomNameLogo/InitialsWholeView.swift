//
//  InitialsWholeView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 20.11.2021.
//

import SwiftUI

struct InitialsWholeView: View {
    @State private var animation = false
    
    var animationIsOn: Animation {
        Animation.linear(duration: 5).repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            
            ZStack {
                CircleView(color: .red, size: size)
                    .rotationEffect(.degrees(animation ? 360 : 0))
                    .animation(animation ? animationIsOn : .default, value: animation)
                CircleView(color: .blue, size: size - 20)
                    .rotationEffect(.degrees(animation ? -360 : 0))
                Button(action: buttonAction) {
                    InitialsView(colorForD: .brown, colorForL: .indigo)
                        .animation(animation ? animationIsOn : .default, value: animation)
                        .frame(width: size, height: size)
                }
                .scaleEffect(0.8)
            }
        }
    }
    
    private func buttonAction() {
        withAnimation {
            animation.toggle()
        }
    }
}

struct InitialsWholeView_Previews: PreviewProvider {
    static var previews: some View {
        InitialsWholeView()
            .frame(width: 150, height: 150)
    }
}
