//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBAction func weightSlider(_ sender: Any) {
    }
    
    @IBOutlet weak var heightLable: UILabel!
    
    @IBOutlet weak var weightLable: UILabel!
    
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        
        heightLable.text = "\(String(format: "%2", sender.value))m"
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLable.text = "\(String(format: "%0", sender.value))Kg"
    }
    
    
    @IBAction func caculatePress(_ sender: UIButton) {
    }
}

