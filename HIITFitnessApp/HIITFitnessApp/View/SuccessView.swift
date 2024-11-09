//
//  SuccessView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct SuccessView: View {
    
    @Binding var selectedTab: Int
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Text("High Five!")
            .font(.largeTitle)
            .bold()
        
        Button("Continue") {
            selectedTab = 9
            dismiss()
        }
        .padding()
    }
}

#Preview {
    SuccessView(selectedTab: .constant(3))
}
