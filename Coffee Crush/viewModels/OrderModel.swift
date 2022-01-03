//
//  OrderModel.swift
//  Coffee Crush
//
//  Created by Nithish Kumar Reddy Nallamjompalli on 12/22/21.
//

import Foundation
class Orders: ObservableObject {
    @Published var orders = [Order]()
    
    func addToOrders(drinks: [DrinkType]) {
        orders.append(Order(Drinks: drinks, date: Date()))
    }
}
