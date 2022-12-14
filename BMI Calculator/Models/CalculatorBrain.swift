//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by mesut on 5.10.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: BMI?
    var color: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
       
        if bmiValue < 18.5
        { bmi = BMI(value: bmiValue, advice: "Eat more snax!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Okay you are okey<3", color: #colorLiteral(red: 0.104279854, green: 0.6551792513, blue: 0.08433022794, alpha: 1))
        } else  {
            bmi = BMI(value: bmiValue, advice: "Voav stop eating and go to GYM", color: #colorLiteral(red: 0.7212087563, green: 0.0928771001, blue: 0.08889444835, alpha: 1))
        }
        }
    func getAdvice() -> String {
     return bmi?.advice ?? "No Advice "
    }
    func getColor() -> UIColor {
       return bmi?.color ?? #colorLiteral(red: 0.9921568627, green: 0.9921995997, blue: 0.9920406938, alpha: 1)
    }
    
        func getBMIValue() -> String {
        let bmiValue0dot = String (format: "%.1f", bmi?.value  ?? "0.0")
        
        return bmiValue0dot
    
        }
    
    
}

