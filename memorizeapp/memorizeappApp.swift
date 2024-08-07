//
//  memorizeappApp.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 19/12/23.
//

import SwiftUI

@main
struct memorizeappApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
