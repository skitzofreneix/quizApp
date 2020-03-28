//
//  Question.swift
//  Quizzler
//
//  Created by Kousar Kudikangal on 26/03/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class Question{
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
}
