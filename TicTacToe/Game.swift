//
//  Game.swift
//  TicTacToe
//
//  Created by William Chen on 10/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Game {

    mutating internal func restart(){
        board = GameBoard()
        
    }

    
    mutating internal func makeMark(at coordinate: Coordinate) throws{
        if let player = activePlayer{
           try! board.place(mark: player, on: coordinate)
            
            if player == .x {
                activePlayer = .o
            }else {
                activePlayer = .x
            }
        }else {
            
        }
        
    
    }
    
    mutating internal func boardIsEmpty() -> Bool{
        var boardIsEmpty = true
        
        for x in 0..<3 {
                  for y in 0..<3 {
                    if board[(x,y)] != nil {
                        boardIsEmpty = false
                    }
                    
                  }
              }
        
       return boardIsEmpty
    }

  private(set) var board: GameBoard

  internal var activePlayer: GameBoard.Mark?
  internal var gameIsOver: Bool
  internal var winningPlayer: GameBoard.Mark?
}
