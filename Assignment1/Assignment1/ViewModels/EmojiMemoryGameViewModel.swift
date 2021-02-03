//
//  EmojiMemoryGameViewModel.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import Foundation

class EmojiMemoryGameViewModel: ObservableObject {
    
    //MARK: - Model
    
    @Published private var model: CardGame = createGame()
 
    //MARK: - Create Game
    
    static func createGame() -> CardGame<String> {
//        let emojis: [String] = ["👽", "💩","👾","🤮","🤥"]
        let theme: CardTheme = CardTheme(rawValue: Int.random(in: 1..<6)) ?? .animals
        var game = CardGame<String>(Int.random(in: 2..<6), theme) { index in
            theme.emojis()[index]
        }
        game.cards = game.cards.shuffled()
        return game
    }
    
    func newGame() {
        self.model = Self.createGame()
    }
    
    //MARK: - Getter cards
    
    var cards: Array<Card<String>> {
        return model.cards
    }
    
    //MARK: - Theme
    
    var theme: CardTheme {
        return model.theme
    }
    
    //MARK: - Score
    
    var score: Int {
        return model.score
    }
    
    //MARK: - Model Intent
    
    func choose(_ card: Card<String>) {
        model.choose(card)
    }
}
