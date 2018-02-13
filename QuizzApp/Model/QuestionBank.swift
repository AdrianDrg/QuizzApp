//
//  QuestionBank.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 12/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    init(){
        
        list.append(Question(text: "Cat de frig este afara?", answer: "Foarte frig"))
        list.append(Question(text: "Ce zi este maine?", answer: "Marti"))
        list.append(Question(text: "In ce an suntem?", answer: "2018"))
        list.append(Question(text: "Cat este euro?", answer: "4.6"))
        list.append(Question(text: "Cat fac 2+2?", answer: "4"))
    }
}
