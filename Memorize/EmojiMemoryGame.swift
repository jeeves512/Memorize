//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jeevan James on 23/11/2020.
//

import Foundation
import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
