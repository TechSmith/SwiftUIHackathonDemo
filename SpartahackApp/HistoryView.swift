//
//  HistoryView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/25/24.
//

import SwiftUI
import SwiftData

struct HistoryView: View {
   @Query private var history: [Visit]
   
   init(landmarkId: String) {
      let predicate = #Predicate<Visit> { visit in
         visit.landmarkId == landmarkId
      }
      
      _history = Query(filter: predicate, sort: \.timestamp)
   }
   
   private var dateFormatter: DateFormatter {
      let dateFormatter = DateFormatter()
      dateFormatter.dateStyle = .medium
      return dateFormatter
   }
   
   var body: some View {
      if history.isEmpty {
         VStack {
            Image(systemName: "clock.arrow.circlepath")
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(height: 50)
            Text("No history for this landmark")
               .font(.title)
         }
         .foregroundColor(.secondary)
         .padding()
      } else {
         List {
            ForEach(history) { visit in
               HStack(alignment: .top) {
                  Text(dateFormatter.string(from: visit.timestamp))
                  Text(visit.notes)
               }
            }
         }
      }
   }
}

#Preview {
    HistoryView(landmarkId: "test")
}
