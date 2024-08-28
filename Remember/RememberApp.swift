//
//  RememberApp.swift
//  Remember
//
//  Created by Carl Helin on 26/07/2022.
//

import SwiftUI

@main
struct RememberApp: App {
    let dateHolder = DateHolder()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dateHolder)
        }
    }
}
