//
//  SourceLinkView.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
      GroupBox() {
        HStack {
          Text("Content")
          Spacer()
          Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
          Image(systemName: "arrow.up.right.square")
        }
        .font(.footnote)
      }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
