//
//  PointsView.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 24/12/20.
//

import SwiftUI

struct PointsView: View {
  var body: some View {
    VStack {
      InstructionText(text: "The slider's value is")
      BigNumberText(text: "50")
      BodyText(text: "You scored 73 Points\n🎉🎉🎉")
      Button(
        action: {},
        label: {
          ButtonText(text: "Start New Round")
        }
      )
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(21.0)
    .shadow(radius: 10, x: 5, y: 5)
  }
}

struct PointsView_Previews: PreviewProvider {
  static var previews: some View {
    PointsView()
    PointsView()
      .preferredColorScheme(.dark)
    PointsView()
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
    PointsView()
      .preferredColorScheme(.dark)
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
  }
}
