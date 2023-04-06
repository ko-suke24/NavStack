//
//  GameView.swift
//  NavStack
//
//  Created by RURU.jr on 2023/04/06.
//

import SwiftUI

struct GameView: View {
    var game: Game
    @Binding var path: NavigationPath
    var body: some View {
        VStack(spacing: 20) {
            Text("\(game.name) has a rating of \(game.rating)")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .bold()

            Button("Recommended game") {
                path.append(StaticData.games.randomElement()!)
            }
            Button("Go to another platform") {
                path.append(StaticData.platforms.randomElement()!)
            }
            Button("Go home") {
                path.removeLast(path.count)
            }
        }
    }
}
