//
//  CardGameView.swift
//  Assignment1
//
//  Created by Alfredo Luco on 01-02-21.
//

import SwiftUI

struct CardGameView: View {
    
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        
        VStack {
            HStack {
                Text(viewModel.theme.title())
                Button("New Game") {
                    viewModel.newGame()
                }
            }
            
            Grid(items: viewModel.cards) { card in
                CardView(card: card, fontLarge: viewModel.cards.count >= 4, color: viewModel.theme.color())
                    .onTapGesture {
                        viewModel.choose(card)
                    }
                    .padding()
            }
            
            Text("Score: \(viewModel.score)")
        }
        
        .padding()
    }
}

struct CardGameView_Previews: PreviewProvider {
    static var previews: some View {
        CardGameView(viewModel: EmojiMemoryGameViewModel())
    }
}
