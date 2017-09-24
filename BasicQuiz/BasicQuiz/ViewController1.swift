import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "hello 1"
        label.isUserInteractionEnabled = true
        view.addSubview(label)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(navigate))
        label.addGestureRecognizer(tapGesture)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func navigate() {
        navigationController?.pushViewController(ViewController2(), animated: true)
    }
}
