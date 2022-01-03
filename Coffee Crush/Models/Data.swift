//
//  Data.swift
//  Coffee Crush
//
//  Created by Nithish Kumar Reddy Nallamjompalli on 12/21/21.
//

import Foundation
import SwiftUI

struct DrinkType: Hashable {
    var type: String
    var size: String
    
    init(type: String, size: String) {
        self.type = type
        self.size = size
    }
}

class Order: Identifiable,ObservableObject {
    var id: UUID?
    var Drinks: [DrinkType]
    var date: Date
    
    init(id: UUID = UUID(), Drinks: [DrinkType], date: Date) {
        self.id = id
        self.Drinks = Drinks
        self.date = date
    }
    
}
