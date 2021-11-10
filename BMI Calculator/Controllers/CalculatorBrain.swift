//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 김민종 on 2021/10/27.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculatorBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "you are Minjong Kim", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "eat less pie", color: UIColor.red)
        }
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "NO advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
        
    }
    
}
