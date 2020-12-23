//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Juan Francisco Dorado Torres on 22/12/20.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
  var game: Game!

  override func setUpWithError() throws {
    game = Game()
  }

  override func tearDownWithError() throws {
    game = nil
  }

  func testScorePositive() {
    var guess = game.target + 5
    var score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }

  func testScoreNegative() {
    var guess = game.target - 5
    var score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
}
