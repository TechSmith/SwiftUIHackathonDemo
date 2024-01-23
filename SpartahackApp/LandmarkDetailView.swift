//
//  LandmarkDetailView.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/23/24.
//

import SwiftUI

struct LandmarkDetailView: View {
   var landmark: Landmark
   var body: some View {
      Text(landmark.name)
   }
}

#Preview {
   LandmarkDetailView(landmark: Landmark.landmarks.randomElement()!)
}
