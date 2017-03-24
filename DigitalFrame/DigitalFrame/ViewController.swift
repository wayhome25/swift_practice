//
//  ViewController.swift
//  DigitalFrame
//
//  Created by Lee hyunjoo on 2017. 3. 24..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named:"1.jpg")!,
                          UIImage(named:"2.jpg")!,
                          UIImage(named:"3.jpg")!,
                          UIImage(named:"4.jpg")!,
                          UIImage(named:"5.jpg")!,
                          UIImage(named:"6.jpg")!,
                          UIImage(named:"7.jpg")!,
                          UIImage(named:"8.jpg")!]
    
        imgView.animationImages = cuteImages
        imgView.animationDuration = 8.0
        
    }

    @IBAction func toggleAction(_ sender:AnyObject){
        
        if imgView.isAnimating{
            imgView.stopAnimating()
            toggleButton.setTitle("시작", for: UIControlState.normal)
        }else{
            
            imgView.startAnimating()
            toggleButton.setTitle("멈춤", for: UIControlState.normal)
        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("멈춤", for: UIControlState.normal)
        speedLabel.text = "\(Int(speedSlider.value))"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

