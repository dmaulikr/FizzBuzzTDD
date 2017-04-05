//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Forrest Zhao on 4/4/17.
//  Copyright © 2017 Forrest Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedGameScore = gameScore else {
                print("Game score is nil")
                return
            }
            numberButton.setTitle("\(unwrappedGameScore)", for: .normal)
        }
    }
    
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = unwrappedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.1
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .Number)
        case fizzButton:
            play(move: .Fizz)
        case buzzButton:
            play(move: .Buzz)
        default:
            return
        }
    }
    
    
}

