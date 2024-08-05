//
//  ContentView.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 19/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if ( isFaceUp ) {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 4)
                Text("👻").font(.largeTitle)
            } else {
                 base
            }
        }.onTapGesture(perform: {
            isFaceUp.toggle()
        })
    }
}







#Preview {
    ContentView()
}
