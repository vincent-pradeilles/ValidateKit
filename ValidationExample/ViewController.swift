//
//  ViewController.swift
//  ValidationExample
//
//  Created by Vincent on 19/08/2017.
//  Copyright © 2017 Vincent. All rights reserved.
//

import UIKit
import ValidateKit

class ViewController: UIViewController {

    @IBOutlet weak var validationResultLabel: UILabel!
    @IBOutlet weak var amountField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        validationResultLabel.text = " "
    }

    @IBAction func validationButtonPressed(_ sender: Any) {
        if let input = amountField.text,
            let _ = Amount(untrusted: Untrusted(value: input)) {
            
            validationResultLabel.text = "Amount is valid"
            validationResultLabel.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            validationResultLabel.text = "Amount is not valid"
            validationResultLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
}
