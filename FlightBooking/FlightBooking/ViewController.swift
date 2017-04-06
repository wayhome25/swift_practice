//
//  ViewController.swift
//  FlightBooking
//
//  Created by Lee hyunjoo on 2017. 4. 6..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectDatePicker: UIDatePicker!
    @IBOutlet var departureDateButton: UIButton!
    
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    var buttonTag:Int = 1
    @IBAction func selectedDateAction(_ sender: AnyObject) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: (sender as! UIDatePicker).date)
        
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for:   UIControlState())
        }else{
            returnDateButton.setTitle(dateString, for: UIControlState())

        }
    }
    @IBAction func showReturnDateAction(_ sender: AnyObject) {
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
    }
    @IBAction func showDatePickerAction(_ sender: AnyObject) {
        selectDatePicker.isHidden = (sender as! UIButton).isSelected
        buttonTag = (sender as! UIButton).tag
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true;
        returnDateButton.isHidden = true;
        selectDatePicker.isHidden = true;
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

