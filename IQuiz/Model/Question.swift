//
//  Question.swift
//  IQuiz
//
//  Created by Hector on 07/06/23.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [

    Question(title: "Qual feitiço para desarmar seu oponente, em Harry Potter? ", answers: ["Expecto Patronum","Avada Kedavra","Expelliarmus"], correctAnswer: 2),
    Question(title: "Quando foi lançado o filme Avatar 2 ", answers: ["2014","2022","2023"], correctAnswer: 1),
    Question(title: "Quando foi lançado o filme Vingadores Ultimato", answers: ["2019","2018","2017"], correctAnswer: 0),

]
