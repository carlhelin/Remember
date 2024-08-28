//
//  LowerBack.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct LowerBack: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Deadlift")
                    Text("Low Row")
                    Text("Barbell Bent Over Row Undergrip")
                    Text("Barbell Bent Over Row Overgrip")
                    Text("Back Extensions")
                }
                .navigationTitle("Lower Back Exercises")
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

struct LowerBack_Previews: PreviewProvider {
    static var previews: some View {
        LowerBack()
    }
}
