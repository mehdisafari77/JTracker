//
//  JTrackerApp.swift
//  JTracker
//
//  Created by Mehdi MMS on 19/05/2022.
//

import SwiftUI

@main
struct JTrackerApp: App {
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableView.appearance().separatorColor = .clear
    }
    
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
