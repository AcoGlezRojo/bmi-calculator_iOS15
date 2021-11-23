//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Acoidán González Rojo on 23/11/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var AdviceLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        BMILabel.text = bmiValue
    }
    
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
