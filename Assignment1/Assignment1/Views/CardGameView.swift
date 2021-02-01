//
//  CardGameView.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import SwiftUI

struct CardGameView: View {
    
    var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card, fontLarge: viewModel.cards.count >= 4).aspectRatio(3 / 2, contentMode: .fit)
            }
        }.padding()
    }
}

struct CardGameView_Previews: PreviewProvider {
    static var previews: some View {
        CardGameView(viewModel: EmojiMemoryGameViewModel())
    }
}
