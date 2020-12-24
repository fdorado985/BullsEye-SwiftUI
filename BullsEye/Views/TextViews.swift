//
//  TextViews.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 23/12/20.
//

import SwiftUI

struct InstructionText: View {
  var text: String

  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
  }
}

struct BigNumberText: View {
  var text: String

  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .fontWeight(.black)
      .kerning(-1.0)
      .font(.largeTitle)
  }
}

struct SliderLabelText: View {
  var text: String

  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .bold()
  }
}

struct LabelText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .bold()
      .kerning(1.5)
      .multilineTextAlignment(.center)
      .font(.caption)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "100")
      LabelText(text: "Score")
    }
  }
}
