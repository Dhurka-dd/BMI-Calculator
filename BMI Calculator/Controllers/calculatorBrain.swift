//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Puvi1046 on 11/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    func getBMIValue() ->String{
        
        let bmiToOneDecimalValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalValue
        
    }
    
    func getAdvice() ->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() ->UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.systemBlue)
            
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.systemGreen)
            
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.systemRed)
        }
       
    }
}
