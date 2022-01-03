//
//  MenuView.swift
//  Coffee Crush
//
//  Created by Nithish Kumar Reddy Nallamjompalli on 12/25/21.
//

import SwiftUI
import Foundation

struct MenuView: View {
    @State  var size: String = ""
    @State var drink: String = ""
    @Binding var isMenu: Bool
    @Binding var latestOrder: [DrinkType]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Coffee"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Coffee"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuList(image: "Cupcoffee", drink: "Coffee")
                }

                Spacer()
                
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Water"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Water"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuList(image: "water", drink: "Water")
                }
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Latte"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Latte"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuList(image: "Latte", drink: "Latte")
                }
                
                Spacer()
                
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Smoothie"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Smoothie"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuList(image: "smoothie", drink: "Smoothie")
                }
                
                Spacer()
            }
            .padding(.bottom)
            
            HStack {
                Spacer()
                Menu {
                    Button(action: {
                        self.size = "Small"
                        self.drink = "Tea"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Small")
                    })
                    Button(action: {
                        self.size = "Large"
                        self.drink = "Tea"
                        placeOrder()
                        isMenu.toggle()
                    }, label: {
                        Text("Large")
                    })
                } label: {
                    MenuList(image: "Tea", drink: "Tea")
                }
                
                Spacer()
                
        }
    }
    }
    
    func placeOrder() {
        latestOrder.append(DrinkType(type: drink, size: size))
    }
}
struct MenuList: View {
    var image: String
    var drink: String

    var body: some View {
        Button(action: {}, label: {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 20)
                Text(drink)
                    .foregroundColor(Color.black)
                
            }
            .padding()
            .background(Color(.systemPink))
            
        })
    }
}



