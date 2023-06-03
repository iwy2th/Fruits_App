//
//  ContentView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI
struct ContentView: View {
  // MARK: - PROPERTIES
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  var fruits: [FruitModel] = FruitsData
  // MARK: - BODY

    var body: some View {
      NavigationView {
        List {
          ForEach(fruits.shuffled()) { item in
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
              .onTapGesture {
                isOnboarding = true
              }
          }
        }
        .navigationTitle("Fruits")
        .navigationBarTitleDisplayMode(.large)
      }//: NAVIGATION


    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
