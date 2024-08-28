//
//  Traps.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Traps: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Barbell Shrug")
                    Text("Barbell Deadlift")
                    Text("Upright Rows")
                    Text("Face Pulls")
                    Text("Dumbbell Lateral Raise")
                }
                .navigationTitle("Traps Exercises")
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

struct Traps_Previews: PreviewProvider {
    static var previews: some View {
        Traps()
    }
}
