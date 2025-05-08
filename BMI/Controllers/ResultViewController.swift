//
//  ResultViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 6.05.2025.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMIValue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var BMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMI.text = BMIValue
        var label = UILabel()
        label.text = advice
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 350)
        view.addSubview(label)
        
        view.backgroundColor = color

    }
    
    @IBAction func RecountButton(_ sender: Any) {
        dismiss(animated: true,completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
