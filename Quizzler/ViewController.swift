//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var newProgressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score:\(score)"
        progressLabel.text = "\(questionNumber + 1) / \(allQuestions.list.count)"
        
        let screenRect = UIScreen.main.bounds
        let screenWidth = screenRect.size.width
        
        print(screenWidth)
        print(progressBar.frame.size.width)
        
        newProgressBar.frame.size.width = (screenWidth / 5 ) * CGFloat(questionNumber + 1)
        
        //progressBar.frame = CGRect(x: 0, y: 0, width: (screenWidth / 5 ) * CGFloat(questionNumber + 1), height: 0)
        
        //self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height + 20.0)
        
        //progressBar.bounds.size.height = 200
        
       // var newFrame = progressBar.frame
        
       // newFrame.size.width = 200
        
        //progressBar.frame = newFrame
        
        //progressBar.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
    }
    

    func nextQuestion() {
        
        if questionNumber < allQuestions.list.count{
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }else{
            
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
        
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer{
            print("correct")
            score += 1
        }else{
            print ("wrong")
        }
    }
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        updateUI()
        nextQuestion()

    }
    
}
