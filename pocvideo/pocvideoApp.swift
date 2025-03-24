//
//  pocvideoApp.swift
//  pocvideo
//
//  Created by helton souza silveira on 23/03/25.
//

import SwiftUI

@main
struct pocvideoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
