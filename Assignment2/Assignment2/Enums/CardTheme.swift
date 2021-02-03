//
//  CardTheme.swift
//  Assignment2
//
//  Created by Alfredo Luco on 03-02-21.
//

import Foundation
import SwiftUI

enum CardTheme: Int {
    case halloween = 1
    case christmas = 2
    case saintValentine = 3
    case flags = 4
    case people = 5
    case animals = 6
    
    func title() -> String {
        switch self {
        case .animals:
            return "Animals"
        case .christmas:
            return "Christmas"
        case .flags:
            return "Flags"
        case .halloween:
            return "Halloween"
        case .people:
            return "People"
        case .saintValentine:
            return "Saint Valentine"
        }
    }
    
    func emojis() -> [String] {
        switch self {
        case .animals:
            return ["🐶","🐱","🐭", "🐹","🐰"]
        case .christmas:
            return ["❄️","☃️","⛄️","🧑🏻‍🎄","🎅🏻"]
        case .flags:
            return ["🇦🇺","🇦🇹","🇧🇷","🇨🇱","🇰🇷"]
        case .halloween:
            return ["🧠","👻","💀","😈","👹"]
        case .people:
            return ["👧🏼","🧒🏼","👩🏼","👴🏾","👵🏻"]
        case .saintValentine:
            return ["💄","💋","🥰","🌡","🎈"]
        }
    }
    
    func color() -> Color {
        switch self {
        case .animals:
            return Color.green
        case .christmas:
            return Color.red
        case .flags:
            return Color.gray
        case .halloween:
            return Color.orange
        case .people:
            return Color.black
        case .saintValentine:
            return Color.pink
        }
    }
    
}
