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
        
        OnboardingExample()
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
