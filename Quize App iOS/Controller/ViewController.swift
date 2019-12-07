//
//  ViewController.swift
//  Quize App iOS
//
//  Created by Md Sifat on 12/5/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit
import  Foundation

class ViewController: UIViewController {
    
    let questionBank = QuestionBank()
    var counter = 0
    var score = 0
    var userAnswer = false

    
    @IBOutlet weak var ScoreShowLbl: UILabel!
    @IBOutlet weak var QuesShowLbl: UILabel!
    @IBOutlet weak var QuesNameLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            // UTF-8 Hexadecimal Encoding
        nextQuestion()
    
    }
    
    @IBAction func ButtonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            userAnswer = true
        }
        else{
            userAnswer = false
        }
        
        checkAnswer()
        
        counter += 1
        
        nextQuestion()
        
    }
    
    func updateUI() {
        
      //  ScoreShowLbl.text = "\(score)"

        
    }
    

    func nextQuestion() {
        
        if counter < questionBank.data.count {

            QuesShowLbl.text = questionBank.data[counter].symbol
            QuesNameLbl.text = questionBank.data[counter].name
            
            updateUI()

        
        } else {
            

            let alert = UIAlertController(title: "Awesome!", message: "You scored \(score)! Do you want to play again", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Play Again", style: .default, handler:
                { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }

    }
    
    
    func checkAnswer() {
        
        let correctAnswer = questionBank.data[counter].answer
        
        if correctAnswer == userAnswer {
            
            score += 1
            
        }
        
    }
    
    
    func startOver() {
        
        counter = 0
        
        score = 0
        
        nextQuestion()
        
    }
    
}

