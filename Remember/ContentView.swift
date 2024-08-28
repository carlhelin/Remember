//
//  ContentView.swiftImage("muscle_man.png")
//  Remember
//
//  Created by Carl Helin on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dateHolder: DateHolder
    
    var body: some View {
        TabView {
            History()
                .environmentObject(dateHolder)
                .tabItem() {
                    Image(systemName: "plus.circle")
                    Text("Session")
                }
            Main()
                .tabItem() {
                    Image(systemName: "house")
                    Text("Bodyparts")
                }
            Settings()
                .tabItem() {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let dateHolder = DateHolder()
    static var previews: some View {
        ContentView()
            .environmentObject(dateHolder)
    }
}
