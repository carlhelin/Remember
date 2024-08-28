//
//  LowAbs.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct LowAbs: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Leg Drops")
                    Text("Hip Lift")
                    Text("Nattle Ropes Core")
                    Text("Rope Wigthed Crunches")
                }
                .navigationTitle("Lower Abs Exercises")
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

struct LowAbs_Previews: PreviewProvider {
    static var previews: some View {
        LowAbs()
    }
}
