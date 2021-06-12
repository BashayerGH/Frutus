//
//  FruitsRowView.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI

struct FruitsRowView: View {
    //    MARK: _ PROPERTIES
    
    var fruit: Fruit
    //    MARK: - BODY

    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            })
        }
    }
}

struct FruitsRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
