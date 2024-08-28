//
//  Forearms.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Forearms: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Barbell Reverse Biceps Curl")
                    Text("Wrist Roller")
                    Text("Bouldering")
                    Text("Behind-the-Back Barbell Wrist Curl")
                    Text("Plate Pinch")
                    Text("Towel Pull-Up")
                    Text("Hammer Curl")
                }
                .navigationTitle("Forearm Exercises")
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

struct Forearms_Previews: PreviewProvider {
    static var previews: some View {
        Forearms()
    }
}
