//
//  BackCalves.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct BackCalves: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Weighted Calve Raises")
                    Text("Standing Barbell Calf Raise")
                    Text("Seated Dumbbell Calf Raise")
                    Text("Farmer’s Walk (on Tiptoes)")
                    Text("Jump Rope")
                    Text("Hill Run / Walk")
                }
                .navigationTitle("Back Calves Exercises")
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

struct BackCalves_Previews: PreviewProvider {
    static var previews: some View {
        BackCalves()
    }
}
