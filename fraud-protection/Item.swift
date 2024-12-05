//
//  Item.swift
//  fraud-protection
//
//  Created by kebato OS on 05/12/24.
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
