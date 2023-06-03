//
//  ContentView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI
struct ContentView: View {
  // MARK: - PROPERTIES
  @State private var isShowingSetting: Bool = false
  var fruits: [FruitModel] = FruitsData
  // MARK: - BODY

  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
      .navigationBarTitleDisplayMode(.large)
      .navigationBarItems(trailing:
                            Button(action: {
        isShowingSetting = true
      }, label: {
        Image(systemName: "slider.horizontal.3")
      })
      .sheet(isPresented: $isShowingSetting) {
            SettingsView()
      }

      )
    }//: NAVIGATION
    .navigationViewStyle(StackNavigationViewStyle())

  }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
