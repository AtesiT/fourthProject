import UIKit

final class ViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as? SecondViewController
            destinationVC?.userName = loginTF.text!
    }
    
    
    @IBAction func loginToAccountAction(_ sender: UIButton) {
        //SecondViewController.userName = loginTF.text ?? ""
    }
    @IBAction func forgotUsernNameBtn(_ sender: UIButton) {
        showAlert(title: "You've forgot your username", message: "Please contact support")
    }
    @IBAction func ForgotPasswordBtn(_ sender: UIButton) {
        showAlert(title: "You've forgot your password", message: "Please contact support")
    }
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }

}

