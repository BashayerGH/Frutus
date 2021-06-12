//
//  FruitsNutrientsView.swift
//  Frutus
//
//  Created by Bashayr on 28/10/1442 AH.
//

import SwiftUI

struct FruitsNutrientsView: View {
    //    MARK: _ PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Sugar", "Fat", "Protien", "Vitemines",
    "Minerals"]

    //    MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())

                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } // Group box
    }
}

//    MARK: - PREVIEW
struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
