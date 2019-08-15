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
    // Question
    @IBOutlet weak var questionLabel: UILabel!
    
    // Progress Bar
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    // MARK:- RANGED SELECTION OUTLETS
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    @IBOutlet weak var rangeSlider: UISlider!
    
    
    // MARK:- RANGED SELECTION ACTIONS
    @IBAction func rangeAnswerButtonPressed(_ sender: UIButton) {
        // Once gain, get the possible answers for this question
        let currentAnswers = questions[questionIndex].answers
        
        // Scale value of the slider by the max value of indices, then round
        // to nearest index
        let index = Int(round(rangeSlider.value * Float(currentAnswers.count - 1)))
        
        // The chosen answer is the one at the rounded index
        answersChosen.append(currentAnswers[index])
        
        // Onwards
        nextQuestion()
    }
    
    
    
    // MARK: - MULTIPLE SELECTION OUTLETS
    // Stack view
    @IBOutlet weak var multipleStackView: UIStackView!
    
    // Labels
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    // Switches
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    // MARK - MULTIPLE SELECTION ACTIONS
    @IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        // Because multiple selection, can append up to 4 answers per question
        if multiSwitch1.isOn {
            answersChosen.append(currentAnswers[0])
        }
        
        if multiSwitch2.isOn {
            answersChosen.append(currentAnswers[1])
        }
        
        if multiSwitch3.isOn {
            answersChosen.append(currentAnswers[2])
        }
        
        if multiSwitch4.isOn {
            answersChosen.append(currentAnswers[3])
        }
        
        nextQuestion()
    }
    
    // MARK:- SINGLE SELECTION OUTLETS
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    // MARK:- SINGLE SELECTION ACTIONS
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        // First get all the answers for this question
        let currentAnswers = questions[questionIndex].answers
        
        // Based on the ID of pressed button, append a different answer to chosenAnswers array
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
        nextQuestion()      // update UI or move to results
    }
    
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
    var questionIndex = 0               // track current + next question to display
    var answersChosen: [Answer] = []    // store all user answers
    
    // MARK:- LIFECYCLE METHODS
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
        
        // Get the current question from the array
        let currentQuestion = questions[questionIndex]
        
        // Store the possible answers for this questio
        let currentAnswers = currentQuestion.answers
        
        // Record total questions completed so far
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        // Update the title to the question number
        navigationItem.title = "Question \(questionIndex + 1)"  // +1 because 0 indexing
        
        // Updating the question label and the progress bar
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        
        
        // Based on this question's type, show the correct stack view
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateMultipleStack(using: currentAnswers)
        }
    }

    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false          // Unhide the view
        
        // Reset all options to default states - prevents them from retaining prev question states
        multiSwitch1.isOn = false
        multiSwitch2.isOn = false
        multiSwitch3.isOn = false
        multiSwitch4.isOn = false
        
        // Update labels
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangeStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangeSlider.setValue(0.5, animated: false)
        
        
        // using first and last properties on the answers collection
        // is safer than direct indexing because we aren't sure what
        // the number of answers will be
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    func nextQuestion() {
        questionIndex += 1      // increment question counter variable
        
        // if not last question, update UI with next question, otherwise go to results
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
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
