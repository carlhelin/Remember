//
//  Biceps.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Biceps: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Dumbell curl")
                    Text("Barbell curl")
                    Text("Hammer curl")
                    Text("Cable Rope curl")
                    Text("Chin Ups")
                    Text("EZ-Bar Preacher curl")
                    Text("Concentration curl")
                }
                .navigationTitle("Biceps Exercises")
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

struct Biceps_Previews: PreviewProvider {
    static var previews: some View {
        Biceps()
    }
}
