//
//  ContentView.swift
//  Memorize
//
//  Created by Jeevan James on 20/11/2020.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        let cardFont =  viewModel.cards.count > 8 ? Font.title: Font.largeTitle
        return HStack(){
            ForEach(viewModel.cards){ card in
                CardView(card: card).onTapGesture{
                    viewModel.choose(card: card)
                }
            }.aspectRatio(0.67, contentMode: .fit)
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(cardFont)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack(){
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
