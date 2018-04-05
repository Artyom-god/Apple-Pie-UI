//
//  ViewController.swift
//  Apple Pie
//
//  Created by Denis Bystruev on 29/03/2018.
//  Copyright © 2018 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TREE: UIImageView!
    @IBOutlet weak var collect: UILabel!
    @IBOutlet weak var score: UILabel!
    
    @IBAction func buttentup(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    var listOfWords = [
    "Игорь",
    "Акинфеев",
        "БОГ"
    
    ]
    let incorrectMovesAllowed = 8
    var totalWins = 0
    var totalLoses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    newRound()
    }
    
    var currentGame: Game!
    
    func newRound() {
    let newWord = listOfWords.removeFirst()
    currentGame = Game(word: newWord, incorectMovesRemaining: incorrectMovesAllowed)
    }
    
}
