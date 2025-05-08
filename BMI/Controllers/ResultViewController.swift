//
//  ResultViewController.swift
//  BMI
//
//  Created by Mürşide Gökçe on 6.05.2025.
//

import UIKit

class ResultViewController: UIViewController {
    var BMIValue : String?
    @IBOutlet weak var BMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMI.text = BMIValue

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
