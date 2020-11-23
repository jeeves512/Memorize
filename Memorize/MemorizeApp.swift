//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jeevan James on 20/11/2020.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
