//
//  MemorizeGame.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 06/08/24.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose( card: Card ) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var contentL: CardContent
    }
    
}
