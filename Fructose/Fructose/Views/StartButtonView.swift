//
//  StartButtonView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - PROPERTIES

  // MARK: - BODY
    var body: some View {
      Button  {
        print("ad")
      } label: {
        HStack {
          Text("Start")
          Image(systemName: "arrow.right.circle")
            .imageScale(.large)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().stroke(Color.white, lineWidth: 1.25))
      } //: BUTTON
      .accentColor(.white)
    }
}
// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
    }
}
