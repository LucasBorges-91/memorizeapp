//
//  ContentView.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","🎃","👹","👺","😈","💀","☠️","👿","👾","🕷️","🕸️","🦇","🫎","😱","🫥","🍭","🍬"]
    

    var body: some View {
        
        ScrollView {
            cards
        }
    
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
            ForEach( emojis.indices, id: \.self ){ index in
                CardView( content: emojis[index] )
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
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
