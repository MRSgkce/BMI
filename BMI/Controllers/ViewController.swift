//
//  ViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 4.05.2025.
//

import UIKit

class ViewController: UIViewController {
    var calculateBrains = calculateBrain()
    var BMI : Float?
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
        calculateBrains.calculate(height: height, weight: weight)
       /* BMI = weight / (pow(height,2))
        print(BMI ?? 0.0)*/
        
        self.performSegue(withIdentifier: "goTorslt", sender: nil)
        //bunu yapınca da diğer ekrana geçiliyor fakat veri aktarımı gibi yapmak istendiğinde
        //prepare kullanılması gerekiyor sanırım.
        /*let seconvc = SecondViewController()
        seconvc.bmi = String(format: "%.1f", BMI)
        self.present(seconvc, animated: true,completion: nil)//diğer ekrana geçiş buradan yapılıyor. O zaman segue veri aktarımı yapılırken mi kullanılıyordu? */
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goTorslt"{
            let destination = segue.destination as! ResultViewController
            
            //destination.BMIValue = String(format: "%.1f", BMI ?? "0.0")
            destination.BMIValue = calculateBrains.donustur()
        }
    }
}

