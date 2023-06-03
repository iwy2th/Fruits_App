//
//  SettingsView.swift
//  Fructose
//
//  Created by Iwy2th on 6/4/23.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  @Environment(\.presentationMode) var presentationMode
  // MARK: - BODY
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          GroupBox(label:
            SettingsLabelView(labelText: "FRUCTUS", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            HStack(alignment: .center,spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more")
                .font(.footnote)
            }
          }
          .padding()
          // MARK: - SECTION 2


          GroupBox(label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Tran Loi")
            SettingsRowView(name: "Designer", content: "Robert Petras")
            SettingsRowView(name: "Compatibility", content: "IOS 16.2")
            SettingsRowView(name: "Github", linkLabel: "Iwy2th", linkDestination: "github.com/iwy2th")
            SettingsRowView(name: "Twitter", linkLabel: "@TL_Iwy2th", linkDestination: "twitter.com/TL_Iwy2th")
            SettingsRowView(name: "SwiftUI", content: "4.0")
            SettingsRowView(name: "Version", content: "14.3")

          }
          // MARK: - SECTION 3
        }//: VSTACK
      } //: SCROLL
      .navigationTitle("Settings")
      .navigationBarTitleDisplayMode(.large)
      .navigationBarItems(trailing:
                            Button(action: {
        presentationMode.wrappedValue.dismiss()
      }, label: {
        Image(systemName: "xmark")
      })



      )
    }//: NAVIGATION
  }
}
// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
