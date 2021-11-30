
import UIKit

class RecalculateViewController: UIViewController {
    
    var bmiBrain = BmiBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m";
        print("altura \(height)")
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
        print("peso \(weight)")
    }
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
      
        bmiBrain.calculate(height: height,weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiBrain.getValue()
            destinationVC.advice = bmiBrain.getAdvice()
            destinationVC.color = bmiBrain.getColor()
        }
    }
    
    
}

