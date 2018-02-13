//
//  answersBank.swift
//  QuizzApp
//
//  Created by Draghici Adrian on 13/02/2018.
//  Copyright © 2018 Draghici Adrian. All rights reserved.
//

import Foundation


class AnswersBank {
    
    var answerList = [Answers]()
    
    init(){
        answerList.append(Answers(answer: ["Foarte cald","Racoare","Foarte frig","Cald"]))
        answerList.append(Answers(answer: ["Marti","Luni","Joi","Duminica"]))
        answerList.append(Answers(answer: ["2020","1996","2001","2018"]))
        answerList.append(Answers(answer: ["4.1","4.6","4.3","4.8"]))
        answerList.append(Answers(answer: ["2","5","4","9"]))
    }
    
}
