import UIKit

final class DescriptionBiographyViewController: UIViewController {
    
    @IBOutlet var nameOfBiography: UILabel!
    @IBOutlet var descriptionOfBiography: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameOfBiography.text = "\(timCook.name) \(timCook.surname)"
        descriptionOfBiography.text = timCook.biography
    }
}
