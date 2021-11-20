//
//  CheckShapesView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 20.11.2021.
//

import SwiftUI

struct CheckShapesView: View {
    
    let awards = Award.getAwards()
    var achievedAwards: [Award] {
        awards.filter { $0.achieved}
    }
    
    var body: some View {
        ShapesView(items: achievedAwards, columns: 2) { itemSize, award in
            VStack {
                award.awardView
                Text(award.title)
            }
            .padding()
            .frame(width: 180, height: 200)
        }
    }
}

struct CheckShapesView_Previews: PreviewProvider {
    static var previews: some View {
        CheckShapesView()
    }
}
