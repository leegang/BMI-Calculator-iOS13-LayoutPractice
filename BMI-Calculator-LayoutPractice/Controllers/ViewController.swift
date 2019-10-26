//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var height:Float = 1.0
    var weight:Float = 1.0
    var bmiBrain = BmiBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLable.text = String(format: "%.1fm",sender.value)
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLable.text = String(format: "%.0fKg", sender.value)
    }
    
    @IBAction func caculatePress(_ sender: UIButton) {
        bmiBrain.caculateBmi(weight: weightSlider.value, height: heightSlider.value)
   
        
//        let secondVC = ResultViewController()
        
//        self.present(secondVC, animated: true, completion: nil)
//        secondVC.bmiScore.text = String(format: "&1f", bmi)
        self.performSegue(withIdentifier: "gotoResult", sender: nil) //Navigate to the other screen
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "gotoResult"{
            let destaionVC = segue.destination as! ResultViewController
            destaionVC.bmiValue = bmiBrain.getBmi()
            destaionVC.advieText = bmiBrain.getAdvice()
            destaionVC.backColor = bmiBrain.getColor()
        }
        // Pass the selected object to the new view controller.
    }
}
