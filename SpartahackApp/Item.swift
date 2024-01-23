//
//  Item.swift
//  SpartahackApp
//
//  Created by Daewoo Maurya on 1/23/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
