import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var myNameIsLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let gradientLayerForSecondVliew = CAGradientLayer()
        gradientLayerForSecondVliew.colors = [UIColor.systemPink.withAlphaComponent(0.5).cgColor, UIColor.systemBlue.withAlphaComponent(0.5).cgColor]
        gradientLayerForSecondVliew.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayerForSecondVliew.endPoint = CGPoint(x: 0.5, y: 1.0)
        view.layer.insertSublayer(gradientLayerForSecondVliew, at: 0)
        gradientLayerForSecondVliew.frame = view.bounds
        
        welcomeLabel.configureLabel()
        myNameIsLabel.configureLabel()
        
        welcomeLabel.text = "Welcome, \(firstUser.user)!"
        myNameIsLabel.text = "My name is \(timCook.name)!"
    }
    
    @IBAction func logOutBtn(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}

extension UILabel {
    func configureLabel(
        textcolor: UIColor = .white,
        fontSize: CGFloat = 24,
        fontWeight: UIFont.Weight = .bold
    ) {
        self.textColor = textcolor
        self.font = UIFont.systemFont(ofSize: fontSize, weight: fontWeight)
    }
}
