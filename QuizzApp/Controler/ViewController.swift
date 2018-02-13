//
//  ViewController.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 12/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let allAnswers = AnswersBank()
    let allQuestion = QuestionBank()
   
    var questionNumber : Int = 0
    var score : Int = 0
    var pickedAnswer : String = ""
    
   //<========Outlets from buttons and labels========>
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_4: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var bgLabel: UIView!
    @IBOutlet weak var poupView: UIView!
    @IBOutlet weak var popupLabel: UILabel!
    @IBOutlet weak var popupButton: UIButton!
    

    //<========What happens when the app is loaded in memory========>
    override func viewDidLoad() {
        super.viewDidLoad()
    
        bgLabel.isHidden = true
        poupView.isHidden = true
        popupLabel.isHidden = true
        popupButton.isHidden = true
        
        let questionAnswersArray = allAnswers.answerList[questionNumber]
        questionLabel.text = allQuestion.list[questionNumber].questionText
        
        button_1.setTitle("\(questionAnswersArray.answerArray[0])", for: .normal)
        button_2.setTitle("\(questionAnswersArray.answerArray[1])", for: .normal)
        button_3.setTitle("\(questionAnswersArray.answerArray[2])", for: .normal)
        button_4.setTitle("\(questionAnswersArray.answerArray[3])", for: .normal)
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "backToFirstView", sender: self)
    }
    
    //<========What happens when the buttons with answers are pressed========>
    @IBAction func answerButton(_ sender: UIButton) {
        pickedAnswer = (sender.titleLabel!.text!)
        
    //<========If the correct answer is selected========>
        if pickedAnswer == allQuestion.list[questionNumber].questionAnswer{
            
           score = score + 1
            scoreLabel.text = "Score: \(score)"
            UIView.animate(withDuration: 0.35, animations: {
                sender.backgroundColor = UIColor(red: 46/255.0, green: 204/255.0, blue: 133/255.0, alpha: 1.0)
            }, completion: { (true) in
                sender.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            })
    //<========If the wrong answer is selected========>
        } else {
            
            UIView.animate(withDuration: 0.35, animations: {
                sender.backgroundColor = UIColor(red: 231/255.0, green: 76/255.0, blue: 70/255.0, alpha: 1.0)
            }, completion: { (true) in
                sender.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            })
        }
        //<========Then we go to the next question========>
        nextQuestion()
    }
    
    
    //<========The next question function========>
    func nextQuestion(){
         questionNumber = questionNumber + 1
        progressLabel.text = "\(questionNumber)/5"
        progressBar.frame.size.width = view.frame.size.width / 5 * CGFloat(questionNumber)
        
        //<========If there are still questions========>
     if questionNumber <= 4{
        
        let questionAnswersArray = allAnswers.answerList[questionNumber]
            questionLabel.text = allQuestion.list[questionNumber].questionText
        
            button_1.setTitle("\(questionAnswersArray.answerArray[0])", for: .normal)
            button_2.setTitle("\(questionAnswersArray.answerArray[1])", for: .normal)
            button_3.setTitle("\(questionAnswersArray.answerArray[2])", for: .normal)
            button_4.setTitle("\(questionAnswersArray.answerArray[3])", for: .normal)
        
        //<========If there are no more questions========>
        }else{
                poupView.isHidden = false
                popupLabel.isHidden = false
                bgLabel.isHidden = false
                popupLabel.text = "End of Quiz. \nDo you want to restart?"
                popupButton.isHidden = false
        }
    }
    
    //<========What happens when the RESTART button is pressed========>
    @IBAction func pressRestartButton(_ sender: UIButton) {
        poupView.isHidden = true
        popupLabel.isHidden = true
        bgLabel.isHidden = true
        popupButton.isHidden = true
        
        startOver()
        updateUI()
    }
    
    //<========The start over function========>
    func startOver(){
    
        questionNumber = 0
        score = 0
    }
    
    //<========UpdateUserInterface function========>
    func updateUI(){
        
        let questionAnswersArray = allAnswers.answerList[questionNumber]
        questionLabel.text = allQuestion.list[questionNumber].questionText
        
        button_1.setTitle("\(questionAnswersArray.answerArray[0])", for: .normal)
        button_2.setTitle("\(questionAnswersArray.answerArray[1])", for: .normal)
        button_3.setTitle("\(questionAnswersArray.answerArray[2])", for: .normal)
        button_4.setTitle("\(questionAnswersArray.answerArray[3])", for: .normal)
        
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber)/5"
        progressBar.frame.size.width = view.frame.size.width / 5 * 0.5

    }
    
    
    
    
    
}
