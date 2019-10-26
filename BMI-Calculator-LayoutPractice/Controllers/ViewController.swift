//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var height:Float = 0.0
    var weight:Float = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        height = sender.value
        heightLable.text = String(format: "%.1fm",height)
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weight = sender.value
        weightLable.text = String(format: "%.0fKg", weight)
    }
    
    @IBAction func caculatePress(_ sender: UIButton) {
        let bmi = weight / (height * weight)
        print(bmi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination = ResultViewController as UIViewController
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
