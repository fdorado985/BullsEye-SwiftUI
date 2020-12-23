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
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)

      VStack {
        InstructionsView(game: $game)

        HStack {
          Text("1")
            .foregroundColor(Color("TextColor"))
            .bold()
          Slider(value: $sliderValue, in: 1.0...100.0)
          Text("100")
            .foregroundColor(Color("TextColor"))
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
        .background(
          ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
        )
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
}

struct InstructionsView: View {
  @Binding var game: Game

  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bull's Eye as close as you can to")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)

      BigNumberText(text: "\(game.target)")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
  }
}
