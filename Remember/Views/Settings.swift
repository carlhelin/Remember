//
//  Settings.swift
//  Remember
//
//  Created by Carl Helin on 26/07/2022.
//

import SwiftUI

struct Settings: View {
    @ObservedObject var userSettings = UserSettings()    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $userSettings.username)
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
