//
//  ExerciseView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct ExerciseView: View {
    
    @Binding var selectedTab: Int
    @State private var rating = 0
    @State private var showHistory = false
    @State private var showSuccess = false
    
    let index: Int
    let interval: TimeInterval = 30
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var isLastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var startButton: some View {
        Button("Start") {
            
        }
    }
    
    var doneButton: some View {
        Button("Done") {
            if isLastExercise {
                showSuccess.toggle()
            }
            else {
                selectedTab += 1
            }
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.name)
                    .padding(.bottom)
                
                VideoPlayerView(fileName: exercise.video)
                    .frame(height: geometry.size.height * 0.45)
                
                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                
                HStack(spacing: 88) {
                    startButton
                    doneButton
                        .sheet(isPresented: $showSuccess) {
                            SuccessView(selectedTab: $selectedTab)
                                .presentationDetents([.medium, .large])
                        }
                }
                .font(.title3)
                .padding()
                
                RatingView(rating: $rating)
                    .padding()
                
                Spacer()
                
                Button("History") {
                    showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                    HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(3), index: 3)
}
