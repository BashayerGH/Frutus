//
//  ContentView.swift
//  Frutus
//
//  Created by Bashayr on 27/10/1442 AH.
//

import SwiftUI

struct ContentView: View {
    //    MARK: _ PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    //    MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)){
                            FruitsRowView(fruit: item)
                            .padding(.vertical, 4)
                        }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }) {
                    Image(systemName: "slider.horizontal.3")
                } // Button
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
        )
        } // NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//    MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
