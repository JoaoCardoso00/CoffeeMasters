//
//  DetailsPage.swift
//  CoffeeMasters
//
//  Created by joao cardoso on 30/09/23.
//

import SwiftUI

struct DetailsPage: View {
    @State private var quantity = 0
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ScrollView {
                Image("Coffee")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .padding(.bottom)
                    .padding(.top, 50)
                Text("Freshy pulled shots of espresso combined with hot water").frame(maxWidth: .infinity)
                HStack {
                    Text("$ 4.25 ea")
                    Stepper(value: $quantity, in: 1 ... 10) {}
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/).padding(.vertical, 50)
                VStack {
                    Text("Subtotal $1.50")
                        .font(.title3)
                        .bold()
                    Button("Add \(quantity) to Cart") {}
                        .padding()
                        .frame(width: 250)
                        .background(Color(.alternative2))
                        .foregroundColor(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                }
            }.padding()

        }.navigationTitle("Details")
    }
}

#Preview {
    DetailsPage()
}
