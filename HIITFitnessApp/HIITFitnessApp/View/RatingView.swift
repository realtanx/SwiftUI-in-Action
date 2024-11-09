//
//  RatingView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    let maxRating = 5
    let onColor: Color = .red
    let offColor: Color = .gray
    
    var body: some View {
        HStack {
            ForEach(1 ..< maxRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor(index > rating ? offColor : onColor)
                    .font(.largeTitle)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}

#Preview {
    RatingView(rating: .constant(4))
        .previewLayout(.sizeThatFits)
}
