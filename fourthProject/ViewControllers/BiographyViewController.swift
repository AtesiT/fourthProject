import UIKit

final class BiographyViewController: UIViewController {

    @IBOutlet var nameOfBiography: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayerForSecondVliew = CAGradientLayer()
        gradientLayerForSecondVliew.colors = [UIColor.systemPink.withAlphaComponent(0.5).cgColor, UIColor.systemBlue.withAlphaComponent(0.5).cgColor]
        gradientLayerForSecondVliew.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayerForSecondVliew.endPoint = CGPoint(x: 0.5, y: 1.0)
        view.layer.insertSublayer(gradientLayerForSecondVliew, at: 0)
        gradientLayerForSecondVliew.frame = view.bounds
        
        
        nameOfBiography.makeWhiteColor()
        nameLabel.makeWhiteColor()
        surnameLabel.makeWhiteColor()
        companyLabel.makeWhiteColor()
        departmentLabel.makeWhiteColor()
        positionLabel.makeWhiteColor()
        
        nameOfBiography.text = "\(timCook.name) \(timCook.surname)"
        nameLabel.text = timCook.name
        surnameLabel.text = timCook.surname
        companyLabel.text = timCook.company
        departmentLabel.text = timCook.department
        positionLabel.text = timCook.position
        
        
    }
}

extension UILabel {
    func makeWhiteColor(textcolor: UIColor = .white) {
        self.textColor = textcolor
    }
}
