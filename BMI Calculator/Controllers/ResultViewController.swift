//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 김민종 on 2021/10/27.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        

    }
    
    @IBAction func recaculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
