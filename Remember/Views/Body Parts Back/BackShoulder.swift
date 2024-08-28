//
//  BackShoulder.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct BackShoulder: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Single Arm Bent Over Row")
                    Text("Standing Bent Over Lateral Raise")
                    Text("Rear Deltoid Machine")
                    Text("Barbell High Row")
                    Text("Dumbell Incline Row")
                    Text("Lying Face Pulls")
                    Text("Rear Delt Cable Pull")
                }
                .navigationTitle("Delts Exercises")
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

struct BackShoulder_Previews: PreviewProvider {
    static var previews: some View {
        BackShoulder()
    }
}
