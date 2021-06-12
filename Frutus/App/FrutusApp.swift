//
//  FrutusApp.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI

@main
struct FrutusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
             OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
