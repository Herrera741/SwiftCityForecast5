//
//  SwiftCityForecast5App.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI
import Firebase

@main
struct SwiftCityForecast5App: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
