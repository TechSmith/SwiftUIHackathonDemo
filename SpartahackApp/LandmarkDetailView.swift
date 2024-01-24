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
         VStack(alignment: .center) {
            Image(landmark.id)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(maxWidth: 600, maxHeight: 300)
            Text(landmark.description)
               .multilineTextAlignment(.leading)
               .frame(maxWidth: .infinity)
         }
         .padding()
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
