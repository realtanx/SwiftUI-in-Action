//
//  HistoryView.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import SwiftUI

struct HistoryView: View {
    
    @Binding var showHistory: Bool
    
    let today = Date()
    let yesterday = Date().addingTimeInterval(-86400)
    let dateFormatter = "MM / dd"
    let history = History()
    
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                
                Form {
                    ForEach(history.exerciseDays) { exerciseDay in
                        Section(header: Text(exerciseDay.date.formatted(as: dateFormatter))
                            .font(.headline)) {
                                ForEach(exerciseDay.exercises, id: \.self) { exercise in
                                    Text(exercise.name)
                                }
                            }
                    }
                }
            }
            
            Button(action: { showHistory.toggle() }) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding()
            .tint(.black)
            
        }
    }
}

#Preview {
    HistoryView(showHistory: .constant(true))
}
