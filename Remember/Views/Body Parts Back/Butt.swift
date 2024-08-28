//
//  Butt.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Butt: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Barbell Hip Thrust")
                    Text("Bulgarian Split Squat")
                    Text("Sumo Romanian Deadlift")
                    Text("Barbell Glute Bridge")
                    Text("Barbell Squat")
                    Text("Trap Bar Deadlift")
                    Text("Dumbbell Stepup")
                    Text("Cable Kickback")
                    Text("Cable Standing Hip Abduction")
                }
                .navigationTitle("Butt Exercises")
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

struct Butt_Previews: PreviewProvider {
    static var previews: some View {
        Butt()
    }
}
