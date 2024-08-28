//
//  Calves.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Calves: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Calf Raises (Heels Touching)")
                    Text("Single-Leg Calf Raise")
                    Text("Box Jumps")
                    Text("Skipping Rope")
                }
                .navigationTitle("Calves Exercises")
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

struct Calves_Previews: PreviewProvider {
    static var previews: some View {
        Calves()
    }
}
