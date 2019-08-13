//
//  Game.swift
//  Apple Pie
//
//  Created by Saad Mashkoor Siddiqui on 12/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]         // an array of letters user has already guessed
    
    // Computed property that updates every time the user guesses an additional letters
    var formattedWord: String {
        var guessedWord = ""                // start as an empty string
        for letter in Array(word) {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"  // add every correct guessed letter in the correct location
            } else {
                guessedWord += "_"          // blank spaces for letters that haven't been guessed yet
            }
        }
        return guessedWord                  // return the word with _s
    }
    
    // Whenever a player guesses a letter, the game will append it to the list of
    // previously guessed letters. If letter is incorrect (not in word) decrement remaining guesses
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }

}
