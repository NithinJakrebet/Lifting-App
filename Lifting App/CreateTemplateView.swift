//
//  CreateTemplateView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//
import SwiftUI
import Foundation

struct Exercise: Identifiable, Hashable {
    let id = UUID()
    let name: String
}


struct CreateTemplateView: View {
    @Binding var templates: [Template]
    @State private var templateName: String = ""
    @State private var currentTemplate = [Exercise]()

    var body: some View {
        VStack{
            
            Text("Create Template")
                .bold()
                .font(.largeTitle)
                .padding()
            /*
             List(exercises, id: \.self) { exercise in
                 Text(exercise)
                     .font(.body)
                     .onTapGesture {
                         self.templates.append(Template(name: templateName))
                     }
                 
             }
         }*/
            
            TextField("Enter Template Name", text: $templateName)
                .font(.title)
                .padding()
            
            NavigationLink(
                destination: ExerciseListView(template: $currentTemplate, templates: $templates), // Replace with your table view of exercises
                label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        Text("Add Exercise")
                            .font(.body)
                            .bold()
                            .foregroundColor(.red)
                    }
                    
                }
                    
            )
            .frame(height: 50)
            .frame(width: 200)
            .padding()
            
            Text("Current Template Exercises:")
                .font(.title2)
               List(currentTemplate, id: \.id) { exercise in
                   Text(exercise.name)
               }
            
            Button(action: {
                    //let newTemplate = Template(name: "Template Name", exercises: selectedExercises)
                     // Append the new template to the list of templates
                templates.append(Template(name: templateName, exercises: [Exercise]()))
                
                /* .onTapGesture {
                 self.template.append(Exercise(name: exercise))
             }*/
            }) {
                Text("Save")
                    .font(.body)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.red)
                    .cornerRadius(10)
            }
               
        }
        .padding()
        

    }
    
}

/* struct CreateTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTemplateView(templates:$templates)
    }
}
*/
