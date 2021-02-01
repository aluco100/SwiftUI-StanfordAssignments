//
//  CardGame.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import Foundation

struct CardGame<T> {
    
    var cards: Array<Card<T>>
    
    func choose(_ card: Card<T>) {
        print(card)
    }
    
    init(_ pairs: Int, _ cardFactory: (Int) -> T) {
        cards = []
        for i in 0..<pairs {
            let content = cardFactory(i)
            cards.append(Card(isFaceUp: true, isMatched: false, content: content))
            cards.append(Card(isFaceUp: true, isMatched: false, content: content))
        }
    }
    
}
