//
//  BmiBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 张雪 on 2019/10/26.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
import UIKit 

class BmiBrain{
    var height:Float = 0
    var weight:Float = 0
    var bmi:Float = 0
//    init(height,weight) {
//        self.height = height
//        self.weight = weight
//    }
    
    func getIbm() -> Float{
        bmi = weight / (height * height)
        return bmi
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
