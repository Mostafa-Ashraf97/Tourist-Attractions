//
//  Tourist_AttractionsApp.swift
//  Tourist Attractions
//
//  Created by A on 07/01/2024.
//

import SwiftUI

@main
struct Tourist_AttractionsApp: App {
    
    @StateObject var viewModel = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(viewModel)
        }
    }
}
