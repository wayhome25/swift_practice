//
//  ViewController.swift
//  MoneyConveter
//
//  Created by Lee hyunjoo on 2017. 4. 15..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currencySegment: UISegmentedControl!
    
    @IBOutlet var sourceMoneyField: UITextField!
    
    @IBOutlet var targetMoneyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertMoney(_ sender: Any) {
        
        guard let sourceCurrency = Currency(rawValue: currencySegment.selectedSegmentIndex) else{
            print("Source Currency Error")
            return
        }
        
        guard let sourceAmount = Double(sourceMoneyField.text!) else {
            targetMoneyLabel.text = "Error"
            return
            
        }
        
        let sourceMoney = Money(sourceAmount, currency: sourceCurrency)
        

        var targetMoneyString = ""
        
        for i in 0...3{
            targetMoneyString += sourceMoney.valueInCurrency(currency.init(rawValue: i)!)
        }
        
        targetMoneyLabel.text = targetMoneyString
    }

}

