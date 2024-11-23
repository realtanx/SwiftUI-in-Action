//
//  DayForecast.swift
//  ChatPrototype
//
//  Created by realtanx on 2024/11/23.
//

import SwiftUI

struct DayForecast: View {
    
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.title)
            Image(systemName: iconName)
                .font(.largeTitle)
                .foregroundStyle(iconColor)
                .padding()
            Text("High: \(high)")
                .fontWeight(.semibold)
                .padding(4)
            Text("Low: \(low)")
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                
        }
        .padding()
    }
}

#Preview {
    DayForecast(day: "Mon", high: 70, low: 60, isRainy: false)
}
