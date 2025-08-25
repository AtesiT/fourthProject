import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(String(describing: userName))"
    }
    
    @IBAction func logOutBtn(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
