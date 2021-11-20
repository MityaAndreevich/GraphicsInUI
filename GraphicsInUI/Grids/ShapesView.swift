//
//  ShapesView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 20.11.2021.
//

import SwiftUI

struct ShapesView: View {
    let awards = Award.getAwards()
    var achievedAwards: [Award] {
        awards.filter { $0.achieved}
    }
    
    var body: some View {
        CustomGridView(items: achievedAwards , columns: 2) { award in
            VStack {
                award.awardView
                Text(award.title)
            }
            .padding()
            //.frame(width: itemSize, height: itemSize)
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
