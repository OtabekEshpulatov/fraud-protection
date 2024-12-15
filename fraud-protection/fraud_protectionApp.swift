//
//  fraud_protectionApp.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
//

import SwiftUI
import SwiftData

@main
struct fraud_protectionApp: App {
    

    @StateObject private var userSettings = UserSettingsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userSettings)
                .environment(\.locale, userSettings.locale.locale)
                .environment(\.colorScheme, userSettings.theme.colorScheme)
        }
    }
}
