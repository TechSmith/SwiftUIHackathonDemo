//
//  Visit.swift
//  SpartahackApp
//
//  Created by Daewoo Maurya on 1/23/24.
//

import Foundation
import SwiftData

@Model
final class Visit {
   var landmarkId: String
   var timestamp: Date
   var notes: String
   
   init(landmarkId: String, timestamp: Date, notes: String) {
      self.landmarkId = landmarkId
      self.timestamp = timestamp
      self.notes = notes
   }
}
