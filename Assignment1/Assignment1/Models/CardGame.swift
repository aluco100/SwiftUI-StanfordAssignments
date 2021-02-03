//
//  CardGame.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import Foundation

struct CardGame<T> where T: Equatable {
    
    var cards: Array<Card<T>>
    
    var theme: CardTheme
    
    var faceUpIndex: Int?
    
    var score: Int = 0
    
    mutating func choose(_ card: Card<T>) {
        print(card)
        guard let index = cards.firstIndex(where: { $0.id == card.id }) else { return }
        if let faceIndex = faceUpIndex {
            if cards[faceIndex].content == cards[index].content {
                cards[faceIndex].isMatched = true
                cards[index].isMatched = true
                score += 2
            }else {
                score -= 1
            }
            faceUpIndex = nil
        }else {
            for i in cards.indices {
                cards[i].isFaceUp = false
            }
            faceUpIndex = index
        }
        cards[index].isFaceUp = true
    }
    
    init(_ pairs: Int, _ theme: CardTheme, _ cardFactory: (Int) -> T) {
        cards = []
        self.theme = theme
        for i in 0..<pairs {
            let content = cardFactory(i)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content))
        }
    }
    
}
