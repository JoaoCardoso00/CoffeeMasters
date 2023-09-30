//
//  Offer.swift
//  CoffeeMasters
//
//  Created by joao cardoso on 05/09/23.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""

    var body: some View {
        ZStack {
            Image("BackgroundPattern")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, maxHeight: 200)
                .clipped()
            VStack {
                Text(title).padding().font(.title).background(Color("CardBackground")).bold()
                Text(description).padding().background(Color("CardBackground"))
            }
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "My Offer", description: "This is an offer").previewLayout(.fixed(width: 350, height: 500))
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)
        }
    }
}
