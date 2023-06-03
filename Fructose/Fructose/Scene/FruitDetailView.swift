//
//  FruitDetailView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

struct FruitDetailView: View {
  // MARK: - PROPERTIES
  var fruit: FruitModel
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // HEADER
          FruitHeaderView(fruit: fruit)
          VStack(alignment: .leading, spacing: 20) {
            // TITLE
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            // HEADLINE
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            // NUTRIENTS
            FruitNutrientsView(fruit: fruit)

            // SUBHEADLINE
            Text("Learn more abount \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            // DESCRIPTION
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            // LINK
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          } //: VSTACK
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }//: VSTACK
        .navigationTitle(fruit.title)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
      }//: SCROLL VIEW
      .ignoresSafeArea()
    } //: NAVIGATION

  }
}
// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: FruitsData[1])
  }
}
