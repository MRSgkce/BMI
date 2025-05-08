//
//  calculateBrainViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 8.05.2025.
//

import UIKit

struct calculateBrain{
    var bmi : Float?
func donustur() -> String {
    var donusum = String(format: "%.1f", bmi ?? 0.0)
    return donusum
    }
    
    mutating func calculate(height: Float, weight: Float){
        self.bmi = weight / (pow(height,2))
    }

}
