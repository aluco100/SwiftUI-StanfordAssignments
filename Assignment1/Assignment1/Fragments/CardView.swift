//
//  CardView.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import SwiftUI

struct CardView: View {
    
    var card: Card<String>
    
    var fontLarge: Bool
    
    var color: Color
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).foregroundColor(color)
                Text(card.content).font(fontLarge ? .largeTitle : .subheadline)
            }else {
                if !card.isMatched {
                    RoundedRectangle(cornerRadius: 10.0).fill(color)
                }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card<String>(isFaceUp: true, isMatched: false, content: "👽"), fontLarge: false, color: .orange)
    }
}
