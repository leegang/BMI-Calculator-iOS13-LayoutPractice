//
//  BmiBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 张雪 on 2019/10/26.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation
class BmiBrain{
    var height:Float
    var weight:Float
    
    init(height,weight) {
        self.height = height
        self.weight = weight
    }
    
    func caculate() {
        let bmi = weight / (height * height)
    }
    
    func getbmiValue() -> Float {
        return bmi
    }
    
    
}
