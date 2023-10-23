//
//  HistoryView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import Foundation
import SwiftUI

// Model for Workout
struct Workout: Identifiable {
    let id = UUID()
    let date: Date
    let workoutName: String
    let duration: String
    let exercises: [String]
}

// Sample data for past workouts
let sampleWorkouts: [Workout] = [
    Workout(date: Date(), workoutName: "Workout A", duration: "45 minutes", exercises: ["Exercise 1", "Exercise 2", "Exercise 3"]),
    Workout(date: Date().addingTimeInterval(-86400), workoutName: "Workout B", duration: "30 minutes", exercises: ["Exercise 4", "Exercise 5"]),
    Workout(date: Date().addingTimeInterval(-172800), workoutName: "Workout C", duration: "60 minutes", exercises: ["Exercise 6", "Exercise 7"]),
]

struct HistoryView: View {
    var body: some View {
        NavigationView {
            List(sampleWorkouts) { workout in
                NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                    VStack(alignment: .leading) {
                        Text(workout.workoutName)
                            .font(.headline)
                        Text("Date: \(formattedDate(workout.date))")
                        Text("Duration: \(workout.duration)")
                    }
                }
            }
            .navigationTitle("Workout History")
        }
    }
}

struct WorkoutDetailView: View {
    let workout: Workout

    var body: some View {
        VStack(alignment: .leading) {
            Text("Workout Details")
                .font(.largeTitle)
                .bold()

            Text("Workout Name: \(workout.workoutName)")
            Text("Date: \(formattedDate(workout.date))")
            Text("Duration: \(workout.duration)")

            Text("Exercises:")
                .font(.headline)
            ForEach(workout.exercises, id: \.self) { exercise in
                Text(exercise)
            }
        }
        .padding()
        .navigationTitle("Workout Details")
    }
}

func formattedDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy"
    return dateFormatter.string(from: date)
}


struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
