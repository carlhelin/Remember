//
//  Shoulder.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Shoulder: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Barbell Overhead Press")
                    Text("Seated Dumbell Overhead Press")
                    Text("Arnold Press")
                    Text("Lateral Raises")                    
                }
                .navigationTitle("Shoulder Exercises")
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

struct Shoulder_Previews: PreviewProvider {
    static var previews: some View {
        Shoulder()
    }
}
