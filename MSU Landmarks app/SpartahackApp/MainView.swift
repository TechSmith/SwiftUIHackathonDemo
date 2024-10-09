//
//  MainView.swift
//  MSULandmarks
//
//  Created by Daewoo Maurya on 1/23/24.
//

import SwiftUI
import SwiftData

struct MainView: View {
   @State private var landmarkAdderShowing = false
   @State var addedLandmark: Landmark?
   @State var addedLandmarks: [Landmark] = []

   var body: some View {
      NavigationSplitView {
         List {
            ForEach(Landmark.landmarks + addedLandmarks) { landmark in
               NavigationLink(value: landmark, label: { Text(landmark.name) })
            }
         }
         .navigationDestination(for: Landmark.self, destination: { LandmarkDetailView(landmark:$0) })
         .navigationSplitViewColumnWidth(min: 180, ideal: 200)
         .toolbar {
            ToolbarItem {
               Button(action: addLandmark) {
                  Label("Add Landmark", systemImage: "plus")
                  }
               }
         }
         .navigationTitle("MSU Landmarks")
      } detail: {
         Text("Select an item")
      }
      .sheet(isPresented: $landmarkAdderShowing, onDismiss: {
         if let addedLandmark {
            addedLandmarks.append(addedLandmark)
         }
         addedLandmark = nil
      }, content: {
         LandmarkAdderView(visitLoggerShowing: $landmarkAdderShowing, newValue: $addedLandmark)
      })
   }

   private func addLandmark() {
      landmarkAdderShowing = true
   }
}

#Preview {
    MainView()
        .modelContainer(for: Visit.self, inMemory: true)
}
