//
//  ExerciseListView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//
import SwiftUI
import Foundation

struct ExerciseListView: View {
    @Binding var template: [Exercise]
    @State var selectedExercises: [Exercise] = []
    @Binding var templates: [Template]

    /*@Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
       sortDescriptors: [NSSortDescriptor(keyPath: \Exercise.name, ascending: true)],
       animation: .default)
    private var exercises: FetchedResults<Exercise>*/
    
    
    let exercises = [
           "Squat",
           "Deadlift",
           "Romanian deadlift",
           "Hip Thrust",
           "Leg Curl",
           "Leg extensions",
           "Split squat",
           "Calf raise",
           "Bench Press",
           "Close Grip Bench Press",
           "Incline Bench press",
           "Chest Fly",
           "Rows",
           "Pull ups",
           "Lat pulldown",
           "Bicep Curls",
           "Tricep Extensions",
           "Overhead press",
           "Lateral raises",
           "Crunches",
           "Leg raises"
       ]
    
    var body: some View {
        HStack{
            VStack{
                /*Button(action: {
                      template.append(contentsOf: template)
                        //let newTemplate = Template(name: "Template Name", exercises: selectedExercises)
                         // Append the new template to the list of templates
                    templates.append(Template(name: templateName))
                         template.append(contentsOf: selectedExercises)
                         selectedExercises.removeAll()
                    
                    /* .onTapGesture {
                     self.template.append(Exercise(name: exercise))
                 }*/
                }) {
                    Text("Save")
                        .font(.body)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }*/
                Text("Exercise List View")
                    .font(.largeTitle)
                    .bold()
                
                Text("Choose exercise")
                    .font(.title)
                
                List(exercises, id: \.self) { exercise in
                    Text(exercise)
                        .font(.body)
                        .onTapGesture {
                            self.template.append(Exercise(name: exercise))
                        }
                    
                }
                
            }
            /*VStack{
                Text("Exercises Chosen")
                    .font(.title)
                    .bold()
                
               
                  }
                
                
                List(template, id: \.id) { exercise in
                                   Text(exercise.name)
                                       .font(.body)
                               }
                               .frame(minWidth: 200)
                
            }*/
            
        }
        
    }
}

struct ExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        let selectedExercises: [Exercise] = []
        let shownTemplates : [Template] = []
        return ExerciseListView(template: .constant(selectedExercises), templates: .constant(shownTemplates))
    }
}
