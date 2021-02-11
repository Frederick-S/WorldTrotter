//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Fred on 2020/10/17.
//

import UIKit

class ConversionViewController: UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ConversionViewController loaded its view.")
    }

    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
}

