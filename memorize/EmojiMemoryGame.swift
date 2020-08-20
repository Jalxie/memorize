//
//  EmojiMemory.swift
//  memorize
//
//  Created by Jalxiey Xie on 19/8/20.
//  Copyright © 2020 Jalxiey Xie. All rights reserved.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["😄", "👿"]

        return MemoryGame<String>(numberOfPairesOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
    //MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    //MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
