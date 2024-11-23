//
//  WelcomePage.swift
//  ChatPrototype
//
//  Created by realtanx on 2024/11/23.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 150, height: 150)
                .foregroundColor(.blue)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome Page")
                .font(.title)
                .border(.black)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Description Text")
                .font(.title2)
                .border(.black)
        }
        .border(.orange)
        .padding()
        .border(.purple)
    }
}

#Preview {
    WelcomePage()
}
