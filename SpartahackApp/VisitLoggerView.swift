//
//  VisitLoggerView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/23/24.
//

import SwiftUI

struct VisitLoggerView: View {
   @Binding var visitLoggerShowing: Bool
   
   @State var id = ""
   @State var name = ""
   @State var description = ""
   @State var categories: [LandmarkCategory] = []
   
   var body: some View {
       NavigationStack {
          Form(content: {
             TextField(text: $id) {
                Text("id")
             }
             TextField(text: $name) {
                Text("name")
             }
             TextField(text: $description) {
                Text("description")
             }
          })
          .padding()
          .toolbar {
             ToolbarItem(placement: .cancellationAction) {
                Button(role: .cancel) {
                   visitLoggerShowing.toggle()
                } label: {
                   Text("Cancel")
                }
             }
             ToolbarItem(placement: .primaryAction) {
                Button(action: {
                   visitLoggerShowing.toggle()
//                   Landmark.landmarks.append(.init(id: id, name: name, description: description))
                }, label: {
                   Image(systemName: "plus")
                })
             }
          }
       }
       .frame(width: 400, height: 300)
    }
}

#Preview {
   VisitLoggerView(visitLoggerShowing: .constant(true))
}
