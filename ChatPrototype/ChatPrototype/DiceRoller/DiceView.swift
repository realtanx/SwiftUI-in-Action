//
//  DiceView.swift
//  ChatPrototype
//
//  Created by realtanx on 2024/11/23.
//

import SwiftUI

struct DiceView: View {
    
    @State private var faceNumber: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(faceNumber).fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(.red, .white)
            
            Button("Roll") {
                withAnimation {
                    faceNumber = Int.random(in: 1...6)
                }
            }
            .padding()
            .foregroundColor(.purple)
            
        }
    }
}

#Preview {
    DiceView()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mint)
}
