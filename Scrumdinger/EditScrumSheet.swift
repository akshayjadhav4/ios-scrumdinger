//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by Akshay Anil Jadhav on 17/06/23.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var editingScrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    @Binding var scrum: DailyScrum
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
        }
    }
}

struct EditScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditScrumSheet(
            editingScrum: .constant(DailyScrum.sampleData[0]),
            isPresentingEditView: .constant(true),
            scrum: .constant(DailyScrum.sampleData[0])
        )
    }
}
