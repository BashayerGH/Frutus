//
//  FruitsModel.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI


// MARK:  - Fruits DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
