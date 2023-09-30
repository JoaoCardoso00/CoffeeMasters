//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by joao cardoso on 30/09/23.
//

import SwiftUI

struct ProductItem: View {
    var body: some View {
        VStack {
            Image("Coffee")
                .frame(width: 300, height: 150)
                .background(Color(.accent))
            HStack {
                VStack(alignment: .leading) {
                    Text("Product Name")
                        .font(.title3).bold()
                    Text("$ 4.25")
                        .font(.caption)
                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.trailing)
    }
}

#Preview {
    ProductItem()
}
