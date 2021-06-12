//
//  OnboardingView.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI

struct OnboardingView: View {
    //    MARK: _ PROPERTIES
    var fruits : [Fruit] = fruitsData

    //    MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
                FruitsCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//    MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iphone 11 pro")
    }
}
