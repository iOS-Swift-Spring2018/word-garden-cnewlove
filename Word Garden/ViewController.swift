//
//  ViewController.swift
//  Word Garden
//
//  Created by Clark Newlove on 2/5/18.
//  Copyright © 2018 Newlove. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var theGuessCountLabel: UILabel!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }

    func updateUIAfterGuess () {
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""}
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessedLetterField.text?.last {
            guessedLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
        } else {
            guessLetterButton.isEnabled = false
    }
        
    
}
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
        
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
       updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
    }
    
}



