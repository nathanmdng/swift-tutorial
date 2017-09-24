import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "hello 2"
        label.isUserInteractionEnabled = true
        view.addSubview(label)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(navigate))
        label.addGestureRecognizer(tapGesture)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    func navigate() {
        navigationController?.pushViewController(ViewController3(), animated: true)
        navigationController?.viewControllers.remove(at: 1)
    }

}
