//
//  UpperAbs.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct UpperAbs: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Abs Rollout")
                    Text("Bicycle Crunch")
                    Text("V Cup")
                    Text("Crunches")
                }
                .navigationTitle("Upper Abs Exercises")
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

struct UpperAbs_Previews: PreviewProvider {
    static var previews: some View {
        UpperAbs()
    }
}
