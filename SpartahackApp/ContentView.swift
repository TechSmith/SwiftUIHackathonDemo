//
//  ContentView.swift
//  SpartahackApp
//
//  Created by Daewoo Maurya on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   @State private var visitLoggerShowing = false

   var body: some View {
      NavigationSplitView {
         List {
            ForEach(Landmark.landmarks) { landmark in
               NavigationLink(value: landmark, label: { Text(landmark.name) })
            }
         }
         .navigationDestination(for: Landmark.self, destination: { LandmarkDetailView(landmark:$0) })
         .navigationSplitViewColumnWidth(min: 180, ideal: 200)
         .toolbar {
            ToolbarItem {
               Button(action: logVisit) {
                  Label("Add Item", systemImage: "plus")
                  }
               }
         }
      } detail: {
         Text("Select an item")
      }
      
      .sheet(isPresented: $visitLoggerShowing, onDismiss: {
         print("test")
      }, content: {
         VisitLoggerView()
      })
    }

   private func logVisit() {
      visitLoggerShowing = true
   }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
