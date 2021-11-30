
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMILabel.text = bmiValue
        AdviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
