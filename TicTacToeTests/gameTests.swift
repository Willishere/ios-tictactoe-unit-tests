//
//  gameTests.swift
//  TicTacToeTests
//
//  Created by William Chen on 10/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class gameTests: XCTestCase {

    

    func testReset() {
        var game = Game(board: GameBoard(), activePlayer: .x, gameIsOver: false, winningPlayer: nil)
        
       try! game.makeMark(at: (0,1))
        XCTAssertFalse(game.boardIsEmpty())
        game.restart()
        XCTAssertTrue(game.boardIsEmpty())
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    

}
