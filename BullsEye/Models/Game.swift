//
//  Game.swift
//  BullsEye
//
//  Created by Juan Francisco Dorado Torres on 22/12/20.
//

import Foundation

struct Game {
  var target = Int.random(in: 1...100)
  var score = 0
  var round = 1

  func points(sliderValue: Int) -> Int {
    return 100 - abs(sliderValue - target)
  }

  mutating func startNewRound(points: Int) {
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
}
