import UIKit

class ViewController: UIViewController {
    
    let questions = Question.getQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let questionView = QuestionView(question: questions[0])
        view.addSubview(questionView)
        for choiceLabel in questionView.choices.subviews {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(processAnswer))
            choiceLabel.addGestureRecognizer(tapGesture)
        }
    }
    
    func processAnswer(_ sender: UITapGestureRecognizer) {
        let choiceLabel: UILabel = sender.view as! UILabel
        choiceLabel.tag == 1 ? print("correct") : print("wrong")
    }

}

