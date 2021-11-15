//
//  MainView.swift
//  GraphicsInUI
//
//  Created by Dmitry Logachev on 15.11.2021.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: { showAward.toggle() }) {
                HStack {
                    if showAward {
                        Text("Hide Award")
                        Image(systemName: "chevron.up.square")
                    } else {
                        Text("Show Award")
                        Image(systemName: "chevron.down.square")
                    }
                }
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
