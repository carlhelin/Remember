//
//  SideAbs.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct SideAbs: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Twisting Crunch")
                    Text("Russian Twist (Weighted)")
                    Text("Side Plank")
                    Text("Hanging Oblique Raise")
                }
                .navigationTitle("Side Abs Exercises")
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

struct SideAbs_Previews: PreviewProvider {
    static var previews: some View {
        SideAbs()
    }
}
