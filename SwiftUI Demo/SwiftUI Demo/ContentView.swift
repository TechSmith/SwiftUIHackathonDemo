//
//  ContentView.swift
//  SwiftUI Demo
//
//  Created by Carson Greene on 1/26/24.
//

import SwiftUI

struct ContentView: View {
   @State var sheet1Showing = false
   @State var sheet2Showing = false
   @AppStorage("checked1") var checkbox1IsChecked = false
   @AppStorage("checked2") var checkbox2IsChecked = false
   
   var body: some View {
      VStack {
         Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
         Text("Hello, world!")
            //.foregroundStyle(.red)
            //.bold()
            //.italic()
         
         Button(action: { sheet1Showing.toggle() }) {
            Text("Show Sheet 1")
         }
         Toggle(isOn: $checkbox1IsChecked, label: {
            Text("Checkbox 1 \(checkbox1IsChecked ? "is" : "isn't") checked")
         })
         
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
