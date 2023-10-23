//
//  ContentView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import SwiftUI

struct Template {
    var name: String
    var exercises: [Exercise]
}

struct ContentView: View {

    @State var templates: [Template] = []

    
    var body: some View {
        NavigationView{
            VStack {
                Text("LIFTING APP")
                    .bold()
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    NavigationLink(
                        destination: MapView(),
                        label: {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                Text("View Map")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.red)
                            }
                            
                        }
                    )
                    .frame(height: 50)
                    .frame(width: 150)
                    .padding()
                    
                    NavigationLink(
                        destination: HistoryView(),
                        label: {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
                                Text("View History")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(.red)
                            }
                            
                        }
                    )
                    .frame(height: 50)
                    .frame(width: 150)
                    .padding()
                }
                
                Text("Templates: ")
                    .bold()
                    .font(.title
                    )
                List(templates, id: \.name) { template in
                    NavigationLink(destination: TemplateDetailView(template: template)) {
                        Text(template.name)
                    }
                }
                NavigationLink(
                    destination: CreateTemplateView(templates: $templates),
                    label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .cornerRadius(10)
                            Text("Create Template")
                                .font(.body)
                                .bold()
                                .foregroundColor(.red)
                        }
                        
                    }
                )
                .frame(height: 50)
                .frame(width: 200)
                .padding()
            }
                
            }
            .padding()
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
