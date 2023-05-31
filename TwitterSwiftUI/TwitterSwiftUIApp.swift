//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by YutaNoguchi on 2023/05/28.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
   
