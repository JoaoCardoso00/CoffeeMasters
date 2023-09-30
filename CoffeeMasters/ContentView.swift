//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by joao cardoso on 05/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage().tabItem {
                Image(systemName: "tag")
                Text("Offers")
            }
            OrdersPage().tabItem {
                Image(systemName: "cart")
                Text("Order")
            }
            InfoPage().tabItem {
                Image(systemName: "info")
                Text("Info")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
