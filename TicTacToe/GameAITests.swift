//
//  GameAITests.swift
//  TicTacToe
//
//  Created by William Chen on 10/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe
class GameAITests: XCTestCase {

    func testWinCheckingVertical1(){
        var board = GameBoard()
        try! board.place(mark: .x, on: (0,0))
        try! board.place(mark: .x, on: (0,1))
        try! board.place(mark: .x, on: (0,2))
        try! board.place(mark: .o, on: (1,0))
        try! board.place(mark: .o, on: (1,1))
        
    }

}
