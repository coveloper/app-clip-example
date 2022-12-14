//
//  AppClipExampleApp.swift
//  AppClipExample
//
//  Created by Jon Bauer on 8/13/22.
//

import SwiftUI

@main
struct AppClipExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
            }
            .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { userActivity in
                guard let incomingURL = userActivity.webpageURL else {
                    return
                }
                print(incomingURL)
            }
            
        }
    }
}
