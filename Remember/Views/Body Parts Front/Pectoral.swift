//
//  Pectoral.swift
//  Remember
//
//  Created by Carl Helin on 7/8/2022.
//

import SwiftUI

struct Pectoral: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List {
                    Text("Bench Press")
                    Text("Incline Bench Press")
                    Text("Decline Bench Press")
                    Text("Dip / Weighted dips")
                    Text("Dumbell press")
                    Text("Incline Dumbell Press")
                    Text("Decline Dumbell Press")
                    Text("High to low fly")
                    Text("Low to high fly")
                    Text("Push ups variations")
                }
                .navigationTitle("Chest Exercises")
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

struct Pectoral_Previews: PreviewProvider {
    static var previews: some View {
        Pectoral()
    }
}
