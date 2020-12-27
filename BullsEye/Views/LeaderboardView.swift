//
//  LeaderboardView.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 24/12/20.
//

import SwiftUI

struct LeaderboardView: View {
  var body: some View {
    VStack(spacing: 10.0) {
      HeaderView()
      LabelView()
      RowView(index: 1, score: 10, date: Date())
    }
  }
}

struct RowView: View {
  let index: Int
  let score: Int
  let date: Date

  var body: some View {
    HStack {
      RoundedTextView(text: String(index))
      Spacer()
      ScoreText(score: score)
        .frame(width: Constants.Leaderboard.leadeboardScoreColWidth)
      Spacer()
      DateText(date: date)
        .frame(width: Constants.Leaderboard.leadeboardDateColWidth)
    }
    .background(
      RoundedRectangle(cornerRadius: .infinity)
        .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
    )
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leadeboardMaxRowWidth)
  }
}

struct HeaderView: View {
  var body: some View {
    ZStack {
      BigBoldText(text: "Leaderboard")
      HStack {
        Spacer()
        Button(
          action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
          label: {
            RoundedImageViewFilled(systemName: "xmark")
              .padding(.trailing)
          }
        )
      }
    }
  }
}

struct LabelView: View {
  var body: some View {
    HStack {
      Spacer()
        .frame(width: Constants.General.roundedViewLength)
      Spacer()
      LabelText(text: "Score")
        .frame(width: Constants.Leaderboard.leadeboardScoreColWidth)
      Spacer()
      LabelText(text: "Date")
        .frame(width: Constants.Leaderboard.leadeboardDateColWidth)
    }
    .padding(.leading)
    .padding(.trailing)
    .frame(maxWidth: Constants.Leaderboard.leadeboardMaxRowWidth)
  }
}

struct LeaderboardView_Previews: PreviewProvider {
  static var previews: some View {
    LeaderboardView()
    LeaderboardView()
      .preferredColorScheme(.dark)
    LeaderboardView()
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
    LeaderboardView()
      .preferredColorScheme(.dark)
      .previewLayout(
        .fixed(
          width: 812,
          height: 375
        )
      )
  }
}
