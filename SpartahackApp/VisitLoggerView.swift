//
//  VisitLoggerView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/24/24.
//

import SwiftUI

struct VisitLoggerView: View {
   @Environment(\.modelContext) private var modelContext
   @Binding var showing: Bool
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
      modelContext.insert(visit)
      showing = false
   }
}

#Preview {
   VisitLoggerView(showing: .constant(true), landmarkId: "test")
}
