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
                awardView: AnyView(GradientRectangles()),
                title: "Gradient Rectangles",
                achieved: true
            ),
            
            Award(
                awardView: AnyView(PathView()),
                title: "Path View",
                achieved: true
            ),
            Award(
                awardView: AnyView(CurvesView()),
                title: "Curves View",
                achieved: true
            ),
            Award(
                awardView: AnyView(InitialsWholeView()),
                title: "Custom Logo",
                achieved: true
            )
        ]
    }
}

