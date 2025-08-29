import UIKit

final class DescriptionBiographyViewController: UIViewController {
    
    @IBOutlet var nameOfBiography: UILabel!
    @IBOutlet var descriptionOfBiography: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayerForSecondVliew = CAGradientLayer()
        gradientLayerForSecondVliew.colors = [UIColor.systemPink.withAlphaComponent(0.5).cgColor, UIColor.systemBlue.withAlphaComponent(0.5).cgColor]
        gradientLayerForSecondVliew.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayerForSecondVliew.endPoint = CGPoint(x: 0.5, y: 1.0)
        view.layer.insertSublayer(gradientLayerForSecondVliew, at: 0)
        gradientLayerForSecondVliew.frame = view.bounds
        
        nameOfBiography.text = "\(timCook.name) \(timCook.surname)"
        descriptionOfBiography.text = timCook.biography
    }
}
