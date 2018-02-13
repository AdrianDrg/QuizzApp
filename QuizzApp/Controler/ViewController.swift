//
//  ViewController.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 12/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestion = QuestionBank()
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    @IBOutlet weak var button_1: UIButton!
    @IBOutlet weak var button_2: UIButton!
    @IBOutlet weak var button_3: UIButton!
    @IBOutlet weak var button_4: UIButton!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestion.list[questionNumber].questionText
        
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        button_1.setTitle("demo text", for: .normal)
        
        
    }
    
    func checkAnswer(){
        
        
    }
    
    func nextQuestion(){
        
        
    }
    
    func startOver(){
        
        
    }
    
}

