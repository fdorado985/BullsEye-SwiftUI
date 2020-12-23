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

  func testExample() throws {
    XCTAssertEqual(game.points(sliderValue: 50), 999)
  }
}
