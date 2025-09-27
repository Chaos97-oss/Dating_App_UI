//
//  Dating_App_UIApp.swift
//  Dating_App_UI
//
//  Created by Chaos on 9/27/25.
//

import SwiftUI

@main
struct Dating_App_UIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
