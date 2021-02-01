//
//  EmojiMemoryGameViewModel.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import Foundation

class EmojiMemoryGameViewModel {
    
    //MARK: - Model
    
    private var model: CardGame = createGame()
 
    //MARK: - Create Game
    
    static func createGame() -> CardGame<String> {
        let emojis: [String] = ["👽", "💩","👾","🤮","🤥"]
        var game = CardGame<String>(Int.random(in: 2..<6)) { index in
            emojis[index]
        }
        game.cards = game.cards.shuffled()
        return game
    }
    
    //MARK: - Getter cards
    
    var cards: Array<Card<String>> {
        return model.cards
    }
    
    //MARK: - Model Intent
    
    func choose(_ card: Card<String>) {
        model.choose(card)
    }
}
