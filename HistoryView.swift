//
//  HistoryView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/25/24.
//

import SwiftUI

struct HistoryView: View {
   var history: [Visit]
   
   private var dateFormatter: DateFormatter {
      let dateFormatter = DateFormatter()
      dateFormatter.dateStyle = .medium
      return dateFormatter
   }
   
   var body: some View {
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

#Preview {
    HistoryView(history: [])
}
