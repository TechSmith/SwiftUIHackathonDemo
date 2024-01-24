//
//  VisitLoggerView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/23/24.
//

import SwiftUI

struct VisitLoggerView: View {
   @Binding var visitLoggerShowing: Bool
   
    var body: some View {
       NavigationStack {
          Form(content: {
             Text("Content")
             Text("Hello, World!")
          })
          .toolbar {
             ToolbarItem(placement: .cancellationAction) {
                Button(action: {
                   visitLoggerShowing.toggle()
                }, label: {
                   Text("Cancel")
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
