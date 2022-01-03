//
//  ContentView.swift
//  Coffee Crush
//
//  Created by Nithish Kumar Reddy Nallamjompalli on 12/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var placeOrder = false
        @State private var orderHistory = false
        @StateObject var orderStore = Orders()
    var body: some View {
        NavigationView{
            VStack{
                Text(" Welcome to Coffee Crush")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.all)
                Spacer()
                Image("coffee").resizable().scaledToFill().frame(width: 250,height:300)
            Spacer()
                NavigationLink(destination: PlaceOrder(orderHistory:Orders()),label: {
                    Text("Place Order")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.top)
                    })
                                            
                NavigationLink(destination: ViewOrderHistory(),label: {
             
                    Text("View Order History")
                        .padding()
                        .font(.title)
                    })
                    
                
                }
            }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Pro")
        }
    }
}
