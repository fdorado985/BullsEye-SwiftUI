//
//  ContentView.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 20/12/20.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()

  var body: some View {
    VStack {
      Text("🎯🎯🎯\nPut the Bull's Eye as close as you can to".uppercased())
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text("\(game.target)")
        .fontWeight(.black)
        .kerning(-1.0)
        .font(.largeTitle)
      HStack {
        Text("1")
          .bold()
        Slider(value: $sliderValue, in: 1.0...100.0)
        Text("100")
          .bold()
      }
      .padding()

      Button(
        action: {
          print("Hello, SwiftUI!")
          alertIsVisible = true
        },
        label: {
          Text("Hit me!".uppercased())
            .bold()
            .font(.title3)
        }
      )
      .padding(20.0)
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(21.0)
      .alert(isPresented: $alertIsVisible) {
        let roundedValue = Int(sliderValue.rounded())
        return Alert(
          title: Text("Hello there!"),
          message: Text(
            "The slider's value is \(roundedValue).\n"
              + "You scored \(game.points(sliderValue: roundedValue)) points this round"
          ),
          dismissButton: .default(Text("Awesome!"))
        )
      }
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
