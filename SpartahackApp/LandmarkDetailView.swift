//
//  LandmarkDetailView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/23/24.
//

import SwiftUI

struct LandmarkDetailView: View {
   var landmark: Landmark
   
   @State private var visitLoggerShowing = false
   
   var body: some View {
      ScrollView {
         Image(landmark.id)
         Text(landmark.description)
      }
      .navigationTitle(landmark.name)
      .toolbar {
         ToolbarItem(placement: .primaryAction) {
            Button(action: logVisit,
                   label: {
               Label(title: { Text("Log visit") },
                     icon: { Image(systemName: "calendar.badge.plus") })
            })
         }
      }
      .sheet(isPresented: $visitLoggerShowing, content: VisitLoggerView.init)
   }
   
   func logVisit() {
      visitLoggerShowing = true
   }
}

#Preview {
   LandmarkDetailView(landmark: Landmark.landmarks.randomElement()!)
}
