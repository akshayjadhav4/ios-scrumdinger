//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Akshay Anil Jadhav on 10/06/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var scrums = DailyScrum.sampleData
    static var previews: some View {
        ScrumsView(scrums: scrums)
    }
}
