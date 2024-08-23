//
//  FlyingNumber.swift
//  memorizeapp
//
//  Created by LUCAS PORTAL on 23/08/24.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int
    
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 3)
}
