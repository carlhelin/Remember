//
//  Quads.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Quads: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Leg Extensions")
                    Text("Barbell Front Squat")
                    Text("Barbell Box Squat")
                    Text("Sissy Squat")
                    Text("Pistol Squat")
                    Text("Bulgarian Split Squat")
                    Text("Dumbbell Walking Lunge")
                }
                .navigationTitle("Quads Exercises")
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

struct Quads_Previews: PreviewProvider {
    static var previews: some View {
        Quads()
    }
}
