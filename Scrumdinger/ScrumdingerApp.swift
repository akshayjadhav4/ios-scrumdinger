//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Akshay Anil Jadhav on 10/06/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
