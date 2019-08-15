//
//  QuestionViewController.swift
//  3P-PersonalityQuiz
//
//  Created by Saad Mashkoor Siddiqui on 15/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    // MARK:- IB OUTLETS
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var singleStackView: UIStackView!
    
    // MARK:- QUESTIONS
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single,
                 answers: [
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: .cat),
                    Answer(text: "Carrots", type: .rabbit),
                    Answer(text: "Corn", type: .turtle),
                ]),
        Question(text: "What activities do you enjoy?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Swimming", type: .turtle),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Cuddling", type: .rabbit),
                    Answer(text: "Eating", type: .dog),
                ]),
        Question(text: "How much do you enjoy car rides?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I dislike them", type: .cat),
                    Answer(text: "I get a little nervous", type: .rabbit),
                    Answer(text: "I barely notice them", type: .turtle),
                    Answer(text: "I love them", type: .dog)
                ])
    ]
    
    // MARK:- INSTANCE PROPERTIES
    var questionIndex = 0           // used to keep track of question to display next
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Load the proper stack view for the given question
        updateUI()
    }
    
    
    // MARK:- HELPER FUNCTIONS
    func updateUI() {
        // First hide all three stack views
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        // Update the title to the question number
        navigationItem.title = "Question \(questionIndex + 1)"  // +1 because 0 indexing
        
        // Get the current question from the array
        let currentQuestion = questions[questionIndex]
        
        // Based on this question's type, show the correct stack view
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            multipleStackView.isHidden = false
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
