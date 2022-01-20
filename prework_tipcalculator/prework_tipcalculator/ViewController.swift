//
//  ViewController.swift
//  prework_tipcalculator
//
//  Created by Devin B. on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billTotalAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var tipPercentageSegmentControl: UISegmentedControl!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Getting bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Getting total tip
        let tipPercentages = [0.15, 0.18, 0.20, 0.25]
        let tip = bill * tipPercentages[tipPercentageSegmentControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Updating tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updating bill total label
        billTotalLabel.text = String(format: "$%.2f", total)
        
        
    }
    

}

