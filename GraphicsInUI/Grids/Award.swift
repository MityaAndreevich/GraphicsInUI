//
//  Award.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 20.11.2021.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let achieved: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "Gradient Rectangles",
                achieved: true
            ),
            
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "Path View",
                achieved: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "Curves View",
                achieved: true
            ),
            Award(
                awardView: AnyView(InitialsWholeView().frame(width: 160, height: 160)),
                title: "Custom Logo",
                achieved: true
            )
        ]
    }
}

