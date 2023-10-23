//
//  MapView.swift
//  Lifting App
//
//  Created by Nithin Jakrebet on 10/22/23.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    @State private var searchingSpot = ""
    var body: some View {
        VStack{
           Text("")
                .navigationBarTitle("Gym Near Me")
            
            TextField("Search", text: $searchingSpot)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
               
            }) {
                Text("Search")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Map here")
            Spacer()
        }
    }
    
}
