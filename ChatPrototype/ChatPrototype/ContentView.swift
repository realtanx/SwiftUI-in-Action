//
//  ContentView.swift
//  ChatPrototype
//
//  Created by realtanx on 2024/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        DayForecastExample()
        
//        OnboardingExample()
        
        DiceRollerExample()
    }
}

#Preview {
    ContentView()
}

struct DayForecastExample: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 70, low: 60, isRainy: false)
            DayForecast(day: "Tue", high: 60, low: 50, isRainy: false)
            DayForecast(day: "Wed", high: 40, low: 20, isRainy: true)
        }
    }
}

struct OnboardingExample: View {
    var body: some View {
        TabView {
            WelcomePage()
            FeaturesPage()
        }
        .background(Gradient(colors: [.orange, .purple]))
        .tabViewStyle(.page)
        .foregroundStyle(.white)
    }
}

struct DiceRollerExample: View {
    
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .padding()
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 3)
                .padding()
            }
            .font(.title)
            .labelStyle(.iconOnly)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.mint)
    }
}
