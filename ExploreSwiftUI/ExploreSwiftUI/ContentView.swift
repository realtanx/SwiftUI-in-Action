//
//  ContentView.swift
//  ExploreSwiftUI
//
//  2025/6/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScreenHeader(title: "Hello, world!", subtitle: "Subtitle", desc: "Normal text with two lines - Happy to explore the SwiftUI framework.")
            Text("Yet another text view")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ScreenHeader: View {
    var title: String
    var subtitle: String
    var desc: String
    
    init(title: String, subtitle: String, desc: String) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.bold)
            Text(desc)
        }
    }
}
