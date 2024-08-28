//
//  Hamstrings.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Hamstrings: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Machine Leg Curl")
                    Text("Barbell Hip Thrust")
                    Text("Romanian Deadlift")
                    Text("Nordic Hamstring Curl")
                    Text("Barbell Squat")
                    Text("Walking Lunges")
                    Text("Split Squat")
                }
                .navigationTitle("Hamstrings Exercises")
            }
            
            Button(action:  {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            
        }
    }
}

struct Hamstrings_Previews: PreviewProvider {
    static var previews: some View {
        Hamstrings()
    }
}
