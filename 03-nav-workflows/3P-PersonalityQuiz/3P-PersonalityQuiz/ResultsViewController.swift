//
//  ResultsViewController.swift
//  3P-PersonalityQuiz
//
//  Created by Saad Mashkoor Siddiqui on 15/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    // MARK: IB OUTLETS
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    // MARK:- INSTANCE PROPERTIES
    var responses: [Answer]!            // force unwrapping because we know it will receive value when this view controller loads
    
    // MARK:- LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Disable back button so user can't change answers
        navigationItem.hidesBackButton = true
        
        // Parse responses received from segue, update labels
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]     // create empty dictionary
        let responseTypes = responses.map{$0.type}          // only need response type, not entire response
        
        // Tally all responses
        for response in responseTypes {
            // If key already in dictionary, increment value by 1. Otherwise add key and set value to 1.
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        // Sort array in descending order of frequency by pairwise comparison
        // Closure that uses anonymous arguments $0 and $1 to compare values of keys (.1) in pairs
        // To sort the array in descending order of frequency
        // And then uses `first` to access the first element, force unwraps it (because it must exist)
        // And then accesses the `key` property i.e. the type of animal
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1}.first!.key
        
        // Update the result label and definition
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    

}
