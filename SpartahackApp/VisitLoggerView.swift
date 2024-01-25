//
//  VisitLoggerView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/24/24.
//

import SwiftUI

struct VisitLoggerView: View {
   @Binding var showing: Bool
   
   @State var visits: [Visit] // TODO: Figure out bindings with this
   var landmarkId: String
   
   @State private var timestamp = Date.now
   @State private var notes = ""
   
   var body: some View {
      NavigationStack {
         VStack(alignment: .leading) {
            DatePicker("Time", selection: $timestamp)
            HStack(alignment: .top) {
               Text("Notes")
               TextEditor(text: $notes)
                  .textEditorStyle(.plain)
                  .frame(minHeight: 100)
            }
         }
         .padding()
         .toolbar {
            ToolbarItem(placement: .primaryAction) {
               Button(action: logVisit,
                      label: {
                  Text("Log Visit")
               })
            }
         }
      }
   }
   
   func logVisit() {
      let visit = Visit(landmarkId: landmarkId, timestamp: timestamp, notes: notes)
      visits.append(visit)
      showing = false
   }
}

#Preview {
   VisitLoggerView(showing: .constant(true), visits: [], landmarkId: "test")
}
