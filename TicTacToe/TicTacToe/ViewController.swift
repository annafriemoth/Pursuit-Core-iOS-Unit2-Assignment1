//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1 // x
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0-empty, 1-x, 2-0
    
   
    
    @IBAction func action(_ sender: UIButton) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 {
            
            gameState[activePosition] = activePlayer
            
        if (activePlayer == 1) {
            sender.setBackgroundImage(UIImage(named: "x"), for: .normal)
            activePlayer = 2
            
        } else {
            sender.setBackgroundImage(UIImage(named: "o"), for: .normal)
                activePlayer = 1
        }
    }
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }


}

