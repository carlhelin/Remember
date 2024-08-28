//
//  Triceps.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Triceps: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Rope Cable Pushdowns")
                    Text("Bar Cable Pushdowns")
                    Text("Triceps Dip")
                    Text("Skull Crushers / Frenchpress")
                    Text("Single Arm Cable Kickback")
                    Text("Overhead Triceps Extensions")
                    Text("Triceps Dips")
                    Text("Close Grip Bench Press")
                }
                .navigationTitle("Triceps Exercises")
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

struct Triceps_Previews: PreviewProvider {
    static var previews: some View {
        Triceps()
    }
}
