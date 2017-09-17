import Foundation

class Question {
    
    let question: String
    let choices: [Int: String]
    let answer: Int
    
    init(question: String, choices: [Int: String], answer: Int) {
        self.question = question
        self.choices = choices
        self.answer = answer
    }
    
    static func getQuestions() -> [Question] {
        return [
            Question(question: "What is the capital of Italy?",
                     choices: [1: "Rome", 2: "Paris", 3: "Florence", 4: "Pisa"], answer: 1)
        ]
    }
    
}
