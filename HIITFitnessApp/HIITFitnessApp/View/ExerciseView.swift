//
//  ExerciseView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct ExerciseView: View {
    
    let index: Int
    let interval: TimeInterval = 30
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(exerciseName: exercise.name)
                    .padding(.bottom)
                VideoPlayerView(fileName: exercise.video)
                    .frame(height: geometry.size.height * 0.45)
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                Button("Start/Done") {
                    
                }
                .font(.title3)
                .padding()
                RatingView()
                    .padding()
                Spacer()
                Button("History") {
                    
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(index: 0)
}
