//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Saad Mashkoor Siddiqui on 19/08/2019.
//

import Foundation

struct Athlete: CustomStringConvertible {
    var name: String
    var age: Int
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) team in \(league)."
    }
}
