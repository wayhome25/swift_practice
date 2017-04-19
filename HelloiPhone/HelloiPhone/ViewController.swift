//
//  ViewController.swift
//  HelloiPhone
//
//  Created by Lee hyunjoo on 2017. 4. 15..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var thisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        thisLabel.text = "Hello iPhone"
    }

}

  
