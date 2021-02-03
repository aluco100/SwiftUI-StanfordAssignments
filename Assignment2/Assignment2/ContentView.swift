//
//  ContentView.swift
//  Assignment2
//
//  Created by Alfredo Luco on 03-02-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardGameView(viewModel: EmojiMemoryGameViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
