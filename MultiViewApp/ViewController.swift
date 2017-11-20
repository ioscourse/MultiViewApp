//
//  ViewController.swift
//  MultiViewApp
//
//  Created by Charles Konkol on 11/20/17.
//  Copyright © 2017 RockValleyCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIWebView!
    
    
    @IBOutlet weak var view2: UIWebView!
    
    @IBOutlet weak var view3: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //view 1
        if let url = URL(string: "http://msn.com") {
            let request = URLRequest(url: url)
            view1.scalesPageToFit = true
            view1.loadRequest(request)
        }
        
        //view 2
        if let url = URL(string: "http://google.com") {
            let request = URLRequest(url: url)
            view2.scalesPageToFit = true
            view2.loadRequest(request)
        }
        
        //view 3
        if let url = URL(string: "http://cnn.com") {
            let request = URLRequest(url: url)
            view3.scalesPageToFit = true
            view3.loadRequest(request)
        }
    
    }

}

