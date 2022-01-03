//
//  PlaceOrder.swift
//  Coffee Crush
//
//  Created by Nithish Kumar Reddy Nallamjompalli on 12/20/21.
//

import SwiftUI

struct PlaceOrder: View {
    var orderHistory: Orders
    @State var latestOrder = [DrinkType]().self
      @State var isMenu = false
    
    
    
    var body: some View {
        VStack{
            VStack{
                Text("Order for")
                HStack{
                    Text(Date(), style: .date)
                    Text(Date(), style: .time)
                    
                }
            
            }
            VStack{
                List(latestOrder ,id: \.self){ items in
                    Text("\(items.size) - \(items.type)")
                    
                    
                }
            }
            Spacer()
            Button(action: {isMenu.toggle()}, label: {
                Text("Add item").font(.title).padding(.top)
            }).sheet(isPresented: $isMenu, content: { MenuView(isMenu: $isMenu, latestOrder: $latestOrder) })
            
            NavigationLink(destination:
                ContentView(),
             label: {
                Text("Submit Order")
                    .foregroundColor(Color.blue)
            })
            Spacer()
        }
    }
}

struct PlaceOrder_Previews: PreviewProvider {
    static var previews: some View {
        PlaceOrder(orderHistory: Orders())
    }
}
