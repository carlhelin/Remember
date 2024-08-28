//
//  LowerTraps.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct LowerTraps: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Cable Face Pulls")
                    Text("Half-kneeling Face Pulls")
                    Text("Overhead Press")
                    Text("T-bar Row")
                    Text("Good Morning")
                }
                .navigationTitle("Lower Traps Exercises")
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

struct LowerTraps_Previews: PreviewProvider {
    static var previews: some View {
        LowerTraps()
    }
}
