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
            
            VStack {
                ZStack {
                    CircleView(color: .red, size: size)
                        .rotationEffect(.degrees(animation ? 360 : 0))
                        .animation(animation ? animationIsOn : .default, value: animation)
                    CircleView(color: .blue, size: size - 20)
                        .rotationEffect(.degrees(animation ? -360 : 0))
                        .animation(animation ? animationIsOn : .default, value: animation)
                    InitialsView(colorForD: .brown, colorForL: .indigo)
                        .offset(y: size / 3)
                }
                .scaleEffect(0.9)
                
                Spacer()
                Button(action: buttonAction) {
                    Text(animation ? "Stop animation" : "Start animation")
                }
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
    }
}
