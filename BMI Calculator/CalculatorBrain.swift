//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matthew Bell on 12/9/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if 18.5 <= bmiValue && bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit As A Fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
        
    func getBMIValue() -> String {
        let bmiTo1Dec = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Dec
    }
    
    func getAdvice () -> String {
        let userAdvice = String(bmi?.advice ?? "Does Not Exist")
        return userAdvice
    }
    
    func getColor () -> UIColor {
        let userColor = (bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        return userColor
    }
    
}
