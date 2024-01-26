//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Carson Greene on 1/26/24.
//

import SwiftUI

struct ContentView: View {
   @State var sheetShowing = false
   @State var checkboxIsChecked = false
   
   var body: some View {
      VStack {
         Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
         Text("Hello, world!")
            //.foregroundStyle(.red)
            //.bold()
            //.italic()
         Button(action: { sheetShowing.toggle() }) {
            Text("Show Sheet")
         }
         Text("Checkbox \(checkboxIsChecked ? "is" : "isn't") checked")
      }
      .padding(8)
      .sheet(isPresented: $sheetShowing) {
         CheckboxView(checkboxIsChecked: $checkboxIsChecked)
      }
   }
}

struct CheckboxView: View {
   @Binding var checkboxIsChecked: Bool
   
   var body: some View {
      Toggle(isOn: $checkboxIsChecked) {
         Text("Is Checked?")
      }
      .padding()
   }
}

#Preview {
    ContentView()
}
