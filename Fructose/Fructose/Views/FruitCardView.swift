//
//  FruitModelCardView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - PROPERTIES
  var fruit: FruitModel
  @State private var isAnimating = false

  // MARK: - BODY
    var body: some View {
      ZStack {
        VStack(spacing: 20) {
          // FruitModel: IMAGE
          Image(fruit.image)
            .resizable()
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
            .scaleEffect(isAnimating ? 1.0 : 0.6)
          // FruitModel: TITLE
          Text(fruit.title)
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 2, x: 2, y: 2)
          // FruitModel: HEADLINE
          Text(fruit.headline)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
          // BUTTON: START
          StartButtonView()
        } //: VSTACK
      } //: ZSTACK
      .onAppear(perform: {
        withAnimation(.easeOut(duration: 0.5)) {
          isAnimating = true
        }
      })
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
      .cornerRadius(20)
      .padding(.horizontal, 20)

    }
}
// MARK: - PREVIEW
struct FruitModelCardView_Previews: PreviewProvider {
    static var previews: some View {
      FruitCardView(fruit: FruitsData[6])
        .previewLayout(.fixed(width: 320, height: 640))
    }
}
