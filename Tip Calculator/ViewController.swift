//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Thuy Trang on 11/28/21.
//

import UIKit

class ViewController: UIViewController {

    var total : Double = Double()
    @IBOutlet weak var currencyControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text input
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
         total = bill + tip
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func convertCurrency(_ sender: Any) {
        
        let currencyConver = [1,23000,1194,1.28,6.38]
        let currencySign = ["$","VND","W","CAD","NDT"]
        let result = total * currencyConver[currencyControl.selectedSegmentIndex]
        let currency = currencySign[currencyControl.selectedSegmentIndex]
        totalLabel.text = String(format: "\(currency) %.2f", result)    }
    
}

