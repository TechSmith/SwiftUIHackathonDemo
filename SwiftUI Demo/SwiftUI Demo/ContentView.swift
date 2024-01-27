//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Carson Greene on 1/26/24.
//

import SwiftUI

struct ContentView: View {
   // @State variables: modifiable by the view, trigger a redraw
   @State var sheet1Showing = false
   @State var sheet2Showing = false
   
   // @AppStorage: persists across app launches in a "plist" file on disk (same as "UserDefaults")
   // Also causes a redraw
   @State var checkbox1IsChecked = false
   @AppStorage("checked2") var checkbox2IsChecked = false
   
   var body: some View {
      VStack {
         // SF Symbols: free-to-use symbols from Apple
         Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
         // View modifiers: change view appearance
         Text("Hello, world!")
            //.foregroundStyle(.red)
            //.bold()
            //.italic()
         
         Text("No @Binding, no @AppStorage")
            .font(.caption)
         Button(action: { sheet1Showing.toggle() }) {
            Text("Show Sheet 1")
         }
         Toggle(isOn: $checkbox1IsChecked, label: {
            Text("Checkbox 1 \(checkbox1IsChecked ? "is" : "isn't") checked")
         })
         
         Text("Has @Binding and @AppStorage")
         Button(action: { sheet2Showing.toggle() }) {
            Text("Show Sheet 2")
         }
         Toggle(isOn: $checkbox2IsChecked, label: {
            Text("Checkbox 2 \(checkbox2IsChecked ? "is" : "isn't") checked")
         })
      }
      .fixedSize()
      .padding(8)
      .sheet(isPresented: $sheet1Showing) {
         NormalCheckboxView(checkboxIsChecked: checkbox1IsChecked)
      }
      .sheet(isPresented: $sheet2Showing) {
         BindingCheckboxView(checkboxIsChecked: $checkbox2IsChecked)
      }
   }
}

struct BindingCheckboxView: View {
   // @Binding: two-way communication between views
   @Binding var checkboxIsChecked: Bool
   
   var body: some View {
      Toggle(isOn: $checkboxIsChecked) {
         Text("Is Checked?")
      }
      .padding()
   }
}

struct NormalCheckboxView: View {
   @State var checkboxIsChecked: Bool
   
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
