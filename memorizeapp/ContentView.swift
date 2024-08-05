//
//  ContentView.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","🎃","👹","👺","😈","💀","☠️","👿","👾","🕷️","🕸️","🦇","🫎","😱","🫥","🍭","🍬"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
            ForEach( 0..<cardCount, id: \.self ){ index in
                CardView( content: emojis[index] )
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button( action: {
            cardCount += offset
        }, label: {
          Image( systemName: symbol )
        })
        .disabled( cardCount + offset < 2 || cardCount + offset > emojis.endIndex )
    }
    
    var cardRemover: some View {
        cardCountAdjuster( by: -1, symbol: "rectangle.stack.fill.badge.minus" )
    }
    
    var cardAdder: some View {
        cardCountAdjuster( by: +1, symbol: "rectangle.stack.fill.badge.plus" )
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            }
//            .opacity( isFaceUp ? 1 : 0 )
            base.fill().opacity( isFaceUp ? 0 : 1 )
        }.onTapGesture(perform: {
            isFaceUp.toggle()
        })
    }
}







#Preview {
    ContentView()
}
