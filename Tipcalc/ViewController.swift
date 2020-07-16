//
//  ViewController.swift
//  Tipcalc
//
//  Created by Parampreet Singh on 7/13/20.
//  Copyright © 2020 Parampreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalTwo: UILabel!
    @IBOutlet weak var totalThree: UILabel!
    @IBOutlet weak var totalFour: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipControl(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        //calculate the tip and total
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total bill
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        totalTwo.text = String(format: "$%.2f", total/2)
        totalThree.text = String(format: "$%.2f", total/3)
        totalFour.text = String(format: "$%.2f", total/4)
    }
    
}

