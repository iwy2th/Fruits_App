//
//  OnboardingView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  var fruits: [FruitModel] = FruitsData
  // MARK: - BODY
    var body: some View {
      TabView {
        ForEach(fruits) { item in
          FruitCardView(fruit: item)
        }//: LOOP
      }//: TAB
     .tabViewStyle(PageTabViewStyle())
     .padding(.vertical, 20)
    }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
