//
//  TemplateDetailView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import SwiftUI

struct TemplateDetailView: View {
    let template: Template

    var body: some View {
        VStack {
            Text("\(template.name)")
                .font(.largeTitle)
                .bold()
                .padding()

            List(template.exercises, id: \.self) { exercise in
                Text(exercise.name)
                    .font(.body)
            }
            .frame(minWidth: 200)
        }
        .navigationTitle("Template Details")
    }
}

struct TemplateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For preview purposes, you can create a sample template
        let sampleTemplate = Template(name: "Sample Template", exercises: [
            Exercise(name: "Exercise 1"),
            Exercise(name: "Exercise 2"),
            Exercise(name: "Exercise 3"),
        ])

        return TemplateDetailView(template: sampleTemplate)
    }
}

