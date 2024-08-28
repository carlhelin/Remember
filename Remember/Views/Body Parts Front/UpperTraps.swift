//
//  UpperTraps.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct UpperTraps: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Barbell Shrug")
                    Text("Dumbell Shrug")
                    Text("Farmers Walk")
                    Text("Cable Rope Shrug")
                }
                .navigationTitle("Upper Trap Exercises")
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

struct UpperTraps_Previews: PreviewProvider {
    static var previews: some View {
        UpperTraps()
    }
}
