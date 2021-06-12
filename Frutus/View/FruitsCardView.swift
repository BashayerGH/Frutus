//
//  FruitsCardView.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI

struct FruitsCardView: View {
//    MARK: _ PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
//    MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
            // Fruit: image
                Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue:0, opacity: 0.16), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ?  1.0 : 0.6)
            // Fruit: title
                Text(fruit.title)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red:0, green:0, blue:0, opacity: 0.15), radius: 2, x: 2, y: 2)
            // Fruit: headline
                Text(fruit.headline)
                    .foregroundColor(fruit.gradientColors[0])
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(minWidth: 480)
            // Fruit: start
                StartButtonView()
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
        }
        // MARK: - BACKGROUND
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors:
            fruit.gradientColors),
            startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//    MARK: - PREVIEW

struct FruitsCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsCardView(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
