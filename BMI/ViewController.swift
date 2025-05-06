//
//  ViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 4.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightlabel: UILabel!
    @IBOutlet weak var heightlabel: UILabel!
  
    @IBOutlet weak var weight: UISlider!
    @IBOutlet weak var height: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
  
    
    @IBAction func heightchang(_ sender: UISlider) {
        
        self.heightlabel.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func weightchng(_ sender: UISlider) {
        self.weightlabel.text = String(format: "%.0f", sender.value)
    }
    
    
    @IBAction func calculatehesapla(_ sender: UIButton) {
        let weight = weight.value
        let height = height.value
        let BMI = weight / (pow(height,2))
        print(BMI)
    }
}

