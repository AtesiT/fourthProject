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
        
        nameOfBiography.text = "\(timCook.name) \(timCook.surname)"
        nameLabel.text = timCook.name
        surnameLabel.text = timCook.surname
        companyLabel.text = timCook.company
        departmentLabel.text = timCook.department
        positionLabel.text = timCook.position
    }
}
