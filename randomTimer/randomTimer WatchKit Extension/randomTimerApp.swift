//
//  randomTimerApp.swift
//  randomTimer WatchKit Extension
//
//  Created by Екатерина Чернова on 20.06.2022.
//

import SwiftUI

@main
struct randomTimerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
