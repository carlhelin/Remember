//
//  Lats.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Lats: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Pullups")
                    Text("Lat Pull-down Machine")
                    Text("Barbell Rows")
                    Text("One Arm Dumbbell Row")
                    Text("Deadlifts")
                    Text("Reeves Incline Row")
                    Text("Seated Cable Row")
                    Text("Standing Lat Pushdown")
                    Text("Kneeling Single Arm High Cable Row")
                }
                .navigationTitle("Lats Exercises")
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

struct Lats_Previews: PreviewProvider {
    static var previews: some View {
        Lats()
    }
}
