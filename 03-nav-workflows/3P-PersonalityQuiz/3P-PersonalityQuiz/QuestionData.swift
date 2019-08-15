//
//  QuestionData.swift
//  3P-PersonalityQuiz
//
//  Created by Saad Mashkoor Siddiqui on 15/08/2019.
//  Copyright © 2019 Saad Mashkoor Siddiqui. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    // Encoding each case with an emoji
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    // Defining a definition property for each case
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischevious, yet mild-tempered, you enjoy doing things on your own."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the detauls. Slow and steady wins the race."
        }
    }
}

