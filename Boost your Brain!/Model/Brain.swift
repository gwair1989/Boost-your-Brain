//
//  Brain.swift
//  Boost your Brain!
//
//  Created by Aleksandr Khalupa on 11.01.2021.
//

import Foundation

struct Brain {
    
    
    let questionsAndAnsvers = [
        QuestionAndAnswers(question: "3 + 3", answers: ["5", "9", "7", "6"], correctAnsver: "6"),
        QuestionAndAnswers(question: "1 + 3", answers: ["9", "4", "8", "5"], correctAnsver: "4"),
        QuestionAndAnswers(question: "4 + 3", answers: ["8", "10", "7", "6"], correctAnsver: "7"),
        QuestionAndAnswers(question: "6 + 3", answers: ["10", "9", "7", "6"], correctAnsver: "9"),
        QuestionAndAnswers(question: "5 + 3", answers: ["7", "9", "8", "6"], correctAnsver: "8"),
        QuestionAndAnswers(question: "7 + 3", answers: ["9", "11", "12", "10"], correctAnsver: "10"),
        QuestionAndAnswers(question: "8 + 3", answers: ["10", "13", "11", "12"], correctAnsver: "11"),
        QuestionAndAnswers(question: "2 + 3", answers: ["5", "4", "7", "6"], correctAnsver: "5"),
        QuestionAndAnswers(question: "9 + 3", answers: ["12", "10", "13", "11"], correctAnsver: "12"),
        
        QuestionAndAnswers(question: "3 + 4", answers: ["5", "9", "7", "6"], correctAnsver: "7"),
        QuestionAndAnswers(question: "1 + 4", answers: ["9", "4", "8", "5"], correctAnsver: "5"),
        QuestionAndAnswers(question: "4 + 4", answers: ["8", "10", "7", "6"], correctAnsver: "8"),
        QuestionAndAnswers(question: "6 + 4", answers: ["10", "9", "7", "6"], correctAnsver: "10"),
        QuestionAndAnswers(question: "5 + 4", answers: ["10", "9", "8", "7"], correctAnsver: "9"),
        QuestionAndAnswers(question: "7 + 4", answers: ["9", "11", "12", "10"], correctAnsver: "11"),
        QuestionAndAnswers(question: "8 + 4", answers: ["10", "8", "11", "12"], correctAnsver: "12"),
        QuestionAndAnswers(question: "2 + 4", answers: ["5", "4", "7", "6"], correctAnsver: "6"),
        QuestionAndAnswers(question: "9 + 4", answers: ["12", "14", "11", "13"], correctAnsver: "13"),

        QuestionAndAnswers(question: "3 + 5", answers: ["8", "9", "7", "6"], correctAnsver: "8"),
        QuestionAndAnswers(question: "1 + 5", answers: ["9", "6", "8", "5"], correctAnsver: "6"),
        QuestionAndAnswers(question: "4 + 5", answers: ["8", "10", "7", "9"], correctAnsver: "9"),
        QuestionAndAnswers(question: "6 + 5", answers: ["10", "12", "11", "13"], correctAnsver: "11"),
        QuestionAndAnswers(question: "5 + 5", answers: ["12", "9", "10", "11"], correctAnsver: "10"),
        QuestionAndAnswers(question: "7 + 5", answers: ["8", "11", "12", "10"], correctAnsver: "12"),
        QuestionAndAnswers(question: "8 + 5", answers: ["10", "8", "11", "13"], correctAnsver: "13"),
        QuestionAndAnswers(question: "2 + 5", answers: ["5", "4", "7", "6"], correctAnsver: "7"),
        QuestionAndAnswers(question: "9 + 5", answers: ["12", "13", "14", "6"], correctAnsver: "14"),

        QuestionAndAnswers(question: "3 + 6", answers: ["5", "9", "7", "6"], correctAnsver: "9"),
        QuestionAndAnswers(question: "1 + 6", answers: ["8", "4", "8", "5"], correctAnsver: "7"),
        QuestionAndAnswers(question: "4 + 6", answers: ["8", "10", "7", "6"], correctAnsver: "10"),
        QuestionAndAnswers(question: "6 + 6", answers: ["10", "13", "11", "12"], correctAnsver: "12"),
        QuestionAndAnswers(question: "5 + 6", answers: ["10", "11", "9", "12"], correctAnsver: "11"),
        QuestionAndAnswers(question: "7 + 6", answers: ["14", "11", "13", "12"], correctAnsver: "13"),
        QuestionAndAnswers(question: "8 + 6", answers: ["12", "14", "11", "13"], correctAnsver: "14"),
        QuestionAndAnswers(question: "2 + 6", answers: ["9", "10", "7", "8"], correctAnsver: "8"),
        QuestionAndAnswers(question: "9 + 6", answers: ["17", "14", "15", "16"], correctAnsver: "15"),

        QuestionAndAnswers(question: "3 + 7", answers: ["11", "9", "10", "12"], correctAnsver: "10"),
        QuestionAndAnswers(question: "1 + 7", answers: ["9", "4", "8", "5"], correctAnsver: "8"),
        QuestionAndAnswers(question: "4 + 7", answers: ["9", "10", "11", "12"], correctAnsver: "11"),
        QuestionAndAnswers(question: "6 + 7", answers: ["12", "11", "13", "14"], correctAnsver: "13"),
        QuestionAndAnswers(question: "5 + 7", answers: ["12", "13", "14", "15"], correctAnsver: "12"),
        QuestionAndAnswers(question: "7 + 7", answers: ["17", "15", "14", "13"], correctAnsver: "14"),
        QuestionAndAnswers(question: "8 + 7", answers: ["15", "14", "13", "16"], correctAnsver: "15"),
        QuestionAndAnswers(question: "2 + 7", answers: ["8", "11", "9", "10"], correctAnsver: "9"),
        QuestionAndAnswers(question: "9 + 7", answers: ["18", "15", "17", "16"], correctAnsver: "16"),

        QuestionAndAnswers(question: "3 + 8", answers: ["11", "12", "10", "13"], correctAnsver: "11"),
        QuestionAndAnswers(question: "1 + 8", answers: ["9", "10", "8", "11"], correctAnsver: "9"),
        QuestionAndAnswers(question: "4 + 8", answers: ["12", "10", "11", "13"], correctAnsver: "12"),
        QuestionAndAnswers(question: "6 + 8", answers: ["15", "14", "17", "16"], correctAnsver: "14"),
        QuestionAndAnswers(question: "5 + 8", answers: ["12", "13", "18", "16"], correctAnsver: "13"),
        QuestionAndAnswers(question: "7 + 8", answers: ["14", "15", "17", "10"], correctAnsver: "15"),
        QuestionAndAnswers(question: "8 + 8", answers: ["16", "18", "15", "13"], correctAnsver: "16"),
        QuestionAndAnswers(question: "2 + 8", answers: ["13", "11", "12", "10"], correctAnsver: "10"),
        QuestionAndAnswers(question: "9 + 8", answers: ["15", "19", "17", "16"], correctAnsver: "17"),

        QuestionAndAnswers(question: "3 + 9", answers: ["15", "12", "13", "11"], correctAnsver: "12"),
        QuestionAndAnswers(question: "1 + 9", answers: ["10", "9", "11", "12"], correctAnsver: "10"),
        QuestionAndAnswers(question: "4 + 9", answers: ["13", "14", "15", "16"], correctAnsver: "13"),
        QuestionAndAnswers(question: "6 + 9", answers: ["13", "14", "15", "16"], correctAnsver: "15"),
        QuestionAndAnswers(question: "5 + 9", answers: ["15", "14", "13", "16"], correctAnsver: "14"),
        QuestionAndAnswers(question: "7 + 9", answers: ["18", "11", "16", "15"], correctAnsver: "16"),
        QuestionAndAnswers(question: "8 + 9", answers: ["16", "17", "1", "6"], correctAnsver: "17"),
        QuestionAndAnswers(question: "2 + 9", answers: ["11", "10", "9", "12"], correctAnsver: "11"),
        QuestionAndAnswers(question: "9 + 9", answers: ["12", "19", "18", "16"], correctAnsver: "18"),

        QuestionAndAnswers(question: "3 + 10", answers: ["13", "11", "12", "14"], correctAnsver: "13"),
        QuestionAndAnswers(question: "1 + 10", answers: ["12", "10", "13", "11"], correctAnsver: "11"),
        QuestionAndAnswers(question: "4 + 10", answers: ["12", "11", "14", "15"], correctAnsver: "14"),
        QuestionAndAnswers(question: "6 + 10", answers: ["13", "15", "17", "16"], correctAnsver: "16"),
        QuestionAndAnswers(question: "5 + 10", answers: ["15", "13", "14", "16"], correctAnsver: "15"),
        QuestionAndAnswers(question: "7 + 10", answers: ["18", "11", "17", "12"], correctAnsver: "17"),
        QuestionAndAnswers(question: "8 + 10", answers: ["10", "18", "11", "16"], correctAnsver: "18"),
        QuestionAndAnswers(question: "2 + 10", answers: ["11", "13", "12", "8"], correctAnsver: "12"),
        QuestionAndAnswers(question: "9 + 10", answers: ["12", "19", "17", "16"], correctAnsver: "19")
    ]
    var falseScore = 0
    var trueScore = 0
    var numberOfQuestion = 0
    
    func chackAnsver(tag: Int) -> Bool {
        let answers = questionsAndAnsvers[numberOfQuestion]
        
        if tag == 0 && answers.answers[0] == answers.correctAnsver {
            return true
        } else  if tag == 1 && answers.answers[1] == answers.correctAnsver {
            return true
        } else  if tag == 2 && answers.answers[2] == answers.correctAnsver {
            return true
        } else if tag == 3 && answers.answers[3] == answers.correctAnsver {
            return true
        }
        
        return false
        
    }
    
    
    mutating func nextQuestion() {
        if numberOfQuestion < questionsAndAnsvers.count - 1 {
            numberOfQuestion += 1
        } else {
            numberOfQuestion = questionsAndAnsvers.count - 1
            
        }
    }
    
    
    
    func getQuestion() -> String {
        return questionsAndAnsvers[numberOfQuestion].question
    }
    
    func getAnsver0() -> String {
        return questionsAndAnsvers[numberOfQuestion].answers[0]
    }
    
    func getAnsver1() -> String {
        return questionsAndAnsvers[numberOfQuestion].answers[1]
    }

    func getAnsver2() -> String {
        return questionsAndAnsvers[numberOfQuestion].answers[2]
    }

    func getAnsver3() -> String {
        return questionsAndAnsvers[numberOfQuestion].answers[3]
    }

    
    
    mutating func countingScore(isTrue: Bool) -> String {
        
        if isTrue {
            trueScore += 1
            return "True: \(trueScore)/\(questionsAndAnsvers.count)"
        }
        return "True: \(trueScore)/\(questionsAndAnsvers.count)"
    }
    
    mutating func starScore() -> String {
        if numberOfQuestion == 0 {
            trueScore = 0
            return "True: \(trueScore)/\(questionsAndAnsvers.count)"
        }
        return "True: \(trueScore)/\(questionsAndAnsvers.count)"
    }
    
    mutating func countinfFalse(isFalse: Bool) -> String {
        
        if isFalse == false {
            falseScore += 1
            return "False: \(falseScore)/\(trueScore)"
        }
        return "False: \(falseScore)/\(trueScore)"
    }
    
    mutating func startCountingFalse() -> String{
        if numberOfQuestion == 0 {
            falseScore = 0
            return "False: \(falseScore)/\(trueScore)"
        }
        return "False: \(falseScore)/\(trueScore)"
    }
    
}
