//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
  
    
    
    
   
       
    var matrix = [ ["_","_","_"],
                   ["_","_","_"],
                   ["_","_","_"] ]
    
    
    // TODO - have a check game state
    //      - horizontal check, vertical check, diagnal check, tie
    func checkGameState() {
        
    }
   

    
    // TODO - update game board/game state
    //      - parameters - player, row and column
    //      - with a switch player1 player2
    
    //    func updateGameState(player: Player ,row: Int, column: Int) {
    //        switch {
    //
    //        }
    //    }
    
    // TODO - enum Player:
    enum Player: String {
        case player1
        case player2
        
        mutating func alternate() {
            switch self {
                
            case .player1:
                self = .player2
                
            case .player2:
                self = .player1
            }
        }
    }
}
