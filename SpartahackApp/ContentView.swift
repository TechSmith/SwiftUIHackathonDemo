//
//  ContentView.swift
//  SpartahackApp
//
//  Created by Daewoo Maurya on 1/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
   @Environment(\.modelContext) private var modelContext
   @Query private var items: [Item]
   
   @State private var visitLoggerShowing = false

   var body: some View {
      NavigationSplitView {
         List {
            ForEach(items) { item in
               NavigationLink {
                  Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
               } label: {
                  Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
               }
            }
            .onDelete(perform: deleteItems)
         }
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
      .sheet(isPresented: $visitLoggerShowing) {
         
      }
    }

   private func logVisit() {
      visitLoggerShowing = true
   }

   private func deleteItems(offsets: IndexSet) {
      withAnimation {
         for index in offsets {
            modelContext.delete(items[index])
         }
      }
   }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
