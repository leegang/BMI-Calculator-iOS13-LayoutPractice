//
//  BmiBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 张雪 on 2019/10/26.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import UIKit 

struct  BmiBrain{
    
    var bmi:Float = 0.0
//    init(height,weight) {
//        self.height = height
//        self.weight = weight
//    }
    
    mutating func caculateBmi(weight:Float,height:Float) {
        bmi = weight / (height * height)
    }
    
    func getBmi() ->String{
        let bmiValue = String(format:"%1f",bmi)
        return bmiValue
    }
    
    func getAdvice() -> String {
        switch bmi {
        case 0...30:
            return "eat more"
        default:
            return "Good!"
        }
    }
    
    func getColor() -> UIColor {
        switch bmi {
        case  0 ... 30:
            return .green
        default:
            return  .blue
        }
    }
    
}
