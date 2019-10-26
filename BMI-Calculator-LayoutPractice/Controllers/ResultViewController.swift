//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 张雪 on 2019/10/26.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var bmiScore: UILabel?
    @IBOutlet weak var bmiAdvice: UILabel!
    
    var bmiValue = ""
    var advieText = ""
    var backColor:UIColor = .red

    @IBOutlet var ResultView: UIView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        bmiScore?.text =  bmiValue
        bmiAdvice?.text = advieText
        ResultView.backgroundColor = backColor
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dissButtonPress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
