//
//  ViewController.swift
//  MiniBrowser2
//
//  Created by Lee hyunjoo on 2017. 4. 6..
//  Copyright © 2017년 Lee hyunjoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var mainWebView: UIWebView!
    @IBOutlet var spinningActivityIndicatorView: UIActivityIndicatorView!

    

    @IBAction func booMarkAction(_ sender: Any) {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkUrl!).com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://www.facebook.com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
      
    }

    func webViewDidStartLoad(_ webView: UIWebView){
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView){
        spinningActivityIndicatorView.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

