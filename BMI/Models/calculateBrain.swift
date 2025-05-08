//
//  calculateBrainViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 8.05.2025.
//

import UIKit

struct calculateBrain{
    var bmi : Bmi?
func donustur() -> String {
    var donusum = String(format: "%.1f", bmi?.value ?? 0.0)
    return donusum
    }
    
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    func color() -> UIColor {
        return bmi?.color ?? UIColor.blue
    }
    
    
    mutating func calculate(height: Float, weight: Float){
        let bmiValue = weight / (pow(height,2))
        if(bmiValue < 18.5){
            bmi = Bmi(value: bmiValue, advice: "biraz daha yemek ye", color: UIColor.blue)
        }
        else if (bmiValue < 24.5 && bmiValue >= 18.5){
            bmi = Bmi(value: bmiValue, advice: "fitsiniz", color: UIColor.green)
        }
        else {
            bmi = Bmi(value: bmiValue, advice: "biraz daha küçük yemek ye", color: UIColor.red)
        }
        
    }

}
