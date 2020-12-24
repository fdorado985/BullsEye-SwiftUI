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
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }

  func testScoreNegative() {
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }

  func testNewRound() {
    game.startNewRound(points: 100)
    XCTAssertEqual(game.score, 100)
    XCTAssertEqual(game.round, 2)
  }

  func testScoreExact() {
    let guess = game.target
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 200)
  }

  func testScoreClose() {
    let guess = game.target + 2
    let score = game.points(sliderValue: guess)
    XCTAssertEqual(score, 98 + 50)
  }
}
