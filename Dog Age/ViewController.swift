//
//  ViewController.swift
//  Dog Age
//
//  Created by samuel.araujo on 10/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputDogName: UITextField!
    
    @IBOutlet weak var ageResult: UILabel!
    
    @IBOutlet weak var inputDogAge: UITextField!
    
    @IBAction func ageCalculate(_ sender: Any) {
        let age = Int(inputDogAge.text!)! * 7
        let name = inputDogName.text!
        
        ageResult.text = "A idade do(a) " + String(name) + " é: " + String(age) + " anos."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        //Looks for single or multiple taps.
         let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


}

