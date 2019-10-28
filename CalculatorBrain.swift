//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mustafa Magdy on 10/28/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
            
        let bmiValue = (weight / pow(height, 2) )
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat more fiddle!", colour: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))

        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies!", colour: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
          
        let bmiToDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Can't advice you!"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }

}
