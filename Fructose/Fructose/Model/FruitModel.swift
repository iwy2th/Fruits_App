//
//  FruitModelModel.swift
//  Fructose
//
//  Created by Iwy2th on 6/3/23.
//

import SwiftUI
struct FruitModel: Identifiable {
  let id = UUID()
  let title: String
  let headline: String
  let image: String
  let gradientColors: [Color]
  let description: String
  let nutrition: [String]
}
