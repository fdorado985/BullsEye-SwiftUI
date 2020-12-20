//
//  ContentView.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 20/12/20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU TO")
      Text("89")
      Slider(value: .constant(50), in: 1.0...100.0)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
