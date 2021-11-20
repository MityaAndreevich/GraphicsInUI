//
//  AwardsView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 15.11.2021.
//

import SwiftUI

struct AwardsView: View {
    let awards = Award.getAwards()
    var achievedAwards: [Award] {
        awards.filter { $0.achieved}
    }
    var body: some View {
        NavigationView {
            VStack {
                CustomGridView(items: achievedAwards, columns: 2) { award in
                    VStack {
                        award.awardView
                        Text(award.title)
                    }
                }
            }
            .navigationTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
