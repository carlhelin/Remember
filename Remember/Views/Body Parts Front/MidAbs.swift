//
//  MidAbs.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct MidAbs: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Situps")
                    Text("Hanging Leg Raises")
                    Text("Decline Situps")
                    Text("Medicine Ball Slam")
                }
                .navigationTitle("Middle Abs Exercises")
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

struct MidAbs_Previews: PreviewProvider {
    static var previews: some View {
        MidAbs()
    }
}
