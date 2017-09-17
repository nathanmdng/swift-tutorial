import UIKit

class QuestionView: UIView {
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    let question: Question
    
    let choices: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 15.0
        return view
    }()
    
    init(question: Question) {
        self.question = question
        super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        questionLabel.text = question.question
        addSubview(questionLabel)
        questionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        questionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        for (key, value) in question.choices {
            let choiceLabel = createLabel(value)
            choiceLabel.tag = key == question.answer ? 1: 0
            choices.addArrangedSubview(choiceLabel)
        }
        addSubview(choices)
        choices.translatesAutoresizingMaskIntoConstraints = false
        choices.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        choices.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 25).isActive = true
    }
    
    func createLabel(_ value: String) -> UILabel {
        let choiceLabel = UILabel()
        choiceLabel.text = value
        choiceLabel.numberOfLines = 0
        choiceLabel.lineBreakMode = .byWordWrapping
        choiceLabel.sizeToFit()
        choiceLabel.isUserInteractionEnabled = true
        return choiceLabel
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
