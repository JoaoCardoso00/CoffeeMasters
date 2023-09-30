//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by joao cardoso on 30/09/23.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                    NavigationLink {
                        DetailsPage()
                    } label: {
                        ProductItem()
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
