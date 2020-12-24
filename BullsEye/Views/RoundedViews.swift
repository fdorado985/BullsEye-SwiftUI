//
//  RoundedViews.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 23/12/20.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String

  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
  }
}

struct RoundRectTextView: View {
  var text: String

  var body: some View {
    Text(text)
      .bold()
      .font(.title2)
      .kerning(-0.2)
      .foregroundColor(Color("TextColor"))
      .frame(minWidth: 68.0, maxHeight: 56.0)
      .overlay(
        RoundedRectangle(cornerRadius: 21)
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10) {
      HStack {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewStroked(systemName: "list.dash")
      }

      HStack {
        RoundedImageViewFilled(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
      }

      RoundRectTextView(text: "999")
    }
  }
}

struct RoundedViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
