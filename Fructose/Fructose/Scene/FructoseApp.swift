//
//  FructoseApp.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

@main
struct FructoseApp: App {
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
