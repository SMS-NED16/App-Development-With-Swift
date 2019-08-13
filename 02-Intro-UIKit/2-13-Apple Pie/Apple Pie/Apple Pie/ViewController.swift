//
//  ViewController.swift
//  Apple Pie
//
//  Created by Saad Mashkoor Siddiqui on 12/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- Word list
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed: Int = 7
    
    // Setting property observers on totalWins and totalLosses to initiate a new round
    // every time the property updates
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!             // New instance of the Game class - not initialized
    // Exclamation mark ! means its okay for the currentGame instance property to be undefined
    // for the short period between app startup and its instantiation in newRound
    
    //MARK:- IBOutlets
    // IB Outlets - References to UI Elements in main.storyboard that allow us to
    // access and modify properties of UI elements in our code
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var buttonTapped: [UIButton]!
    
    
    //MARK:- viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Start a new round
        newRound()
    }
    
    //MARK:- NEW ROUND
    func newRound() {
        if !listOfWords.isEmpty {
            // Word for this round = first word in the list of words
            let newWord = listOfWords.removeFirst()
            
            // Initialize a new Game with this word and the specified moves allowed
            // On startup, no guessed letters so pass an empty array
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            print(currentGame.word)
            
            // Enable all letters for the game
            enableLetterButtons(true)
            
            // Update the UI for the new game
            updateUI()
        } else {
            enableLetterButtons(false)              // if no more words in the list, disable all buttons
        }
    }
    
    
    // MARK:- enabling buttons
    // TODO: Rename buttonTapped property to letterButtons
    func enableLetterButtons(_ enable: Bool) {
        for button in buttonTapped {
            button.isEnabled = enable
        }
    }
    
    //MARK:- Button Press IBAction
    // A single IB Action will be used to handle button presses for all buttons
    // The `sender` argument will be used as the ID of the button to access its value
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Disable the button - won't be enabled until next round
        sender.isEnabled = false
        
        /*
            First extract the letter from the title of the button for the normal state
            Force unwrapping ! necessary because not all buttons have titles, so have
            to explicitly tell Swift not to throw an error here because we know this
            button (or collection of buttons) does indeed have
         */
        let letterString = sender.title(for: .normal)!
        
        // Convert this string to a character so that it can be compared with individual chars
        let letter = Character(letterString.lowercased())
        
        // Pass the letter selected by the user to the Game instance for checking
        currentGame.playerGuessed(letter: letter)
        
        updateGameState()
        
        // Update the UI with the number of correct and incorrect label
        updateUI()
    }
    
    //MARK:- UPDATE UI
    func updateUI() {
        // Display word with correctly guessed letters - spacing added with separator before display
        var letters = [String]()            // empty array
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        
        // Using the separator to add spaces between words - shows individual letters
        let wordWithSpacing = letters.joined(separator: " ")
        
        // Change the label's text property to display the formatted word
        correctWordLabel.text = wordWithSpacing
        
        // Update labels to show number of correct and incorrect guesses in this lifecycle
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        
        // Also update the image of the tree to show how many incorrect moves remain
        // By using the name of the tree file - if 7 moves, then file name is "Tree 7"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)");
    }
    
    // MARK:- Game State - Keeps track of win, loss, or next move
    func updateGameState() {
        // If user has no moves remaining - game lost
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        }
        
        // if the user still has moves remaining but guessed word = actual word => no underscores
            // user has won
        else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()      // neither won nor lost. Update UI for next turn.
        }
    }
    
}

