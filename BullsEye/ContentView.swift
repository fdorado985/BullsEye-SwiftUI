//
//  ContentView.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 20/12/20.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible: Bool = false

  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU TO")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text("89")
        .fontWeight(.black)
        .kerning(-1.0)
        .font(.largeTitle)
      HStack {
        Text("1")
          .bold()
        Slider(value: .constant(50), in: 1.0...100.0)
        Text("100")
          .bold()
      }
      Button(
        action: {
          print("Hello, SwiftUI!")
          self.alertIsVisible = true
        },
        label: {
          Text("Hit me")
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
  }
}
