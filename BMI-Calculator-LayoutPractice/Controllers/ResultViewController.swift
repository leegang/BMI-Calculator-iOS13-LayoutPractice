//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 张雪 on 2019/10/26.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var bmiScore: UILabel!
    @IBOutlet weak var bmiAdvice: UILabel!
    
    let bmiBrain = BmiBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiScore.text = String(format: "%1f", bmiBrain.bmiValue)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
