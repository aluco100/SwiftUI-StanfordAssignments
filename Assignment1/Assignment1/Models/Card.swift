//
//  Card.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import Foundation

struct Card<T>: Identifiable {
    var id = UUID()
    var isFaceUp: Bool
    var isMatched: Bool
    var content: T
}
