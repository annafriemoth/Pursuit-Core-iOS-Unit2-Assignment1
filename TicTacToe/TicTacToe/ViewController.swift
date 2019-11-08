//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func playAgain(_ sender: Any) {
        activeGame = true
        activePlayer = 1
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    }
    
    var activeGame = true
    
  
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0-empty, 1-x, 2-0
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
   
    
    @IBOutlet var gameButtons: [GameButton]!
    
    var activePlayer = 1 // x
    
    @IBAction func action(_ sender: UIButton) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame {

            gameState[activePosition] = activePlayer
            
        if (activePlayer == 1) {
            sender.setBackgroundImage(UIImage(named: "x"), for: [])
            activePlayer = 2
            
        } else {
            sender.setBackgroundImage(UIImage(named: "o"), for: [])
                activePlayer = 1
        }
            
            for combination in winningCombinations {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    activeGame = false
                    
                    winnerLabel.isHidden = false
                    playAgain.isHidden = false
                    
                    if gameState[combination[0]] == 1 {
                        winnerLabel.text = "X wins!"
                    } else {
                        winnerLabel.text = "O wins!"
                    }
                }
                
                
            }
    }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
        winnerLabel.isHidden = true
        playAgain.isHidden = true
 
}
}
