//
//  BackForearms.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct BackForearms: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Dumbell Wrist Curls")
                    Text("Dead Hangs")
                    Text("Wrist Roller")
                    Text("Forearm Squeeze")
                }
                .navigationTitle("Backarms Exercises")
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

struct BackForearms_Previews: PreviewProvider {
    static var previews: some View {
        BackForearms()
    }
}
