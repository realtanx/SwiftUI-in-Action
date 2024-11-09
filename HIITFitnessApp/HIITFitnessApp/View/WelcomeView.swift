//
//  WelcomeView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("History") {}
                    .padding(.bottom)
            }
            
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("Wel")
                            .font(.largeTitle)
                    }
                    
                    Image("step-up")
                        .resizedToFill(width: 120, height: 120)
                        .clipShape(Circle())
                }
                
                Button(action: {}) {
                    Text("Get Started")
                    Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke()
                )
            }
        }
    }
}

#Preview {
    WelcomeView()
}
