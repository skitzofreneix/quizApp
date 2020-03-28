//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Kousar Kudikangal on 26/03/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank{
    
    var list = [Question]()
    
    init() {
        
        //Careating a list item and appending to list
        let item = Question(text: "Valantines day is banned in saudi arabia.", correctAnswer: true)
        
        // ad the question into the list
        list.append(item)
        
        list.append(Question(text: "A slugs blood is green1", correctAnswer: true))
        list.append(Question(text: "A slugs blood is green2", correctAnswer: true))
        list.append(Question(text: "A slugs blood is green3", correctAnswer: true))
        list.append(Question(text: "A slugs blood is green4", correctAnswer: true))
        
        
    }
}
