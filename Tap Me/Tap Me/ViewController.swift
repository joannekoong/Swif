//
//  ViewController.swift
//  Tap Me
//
//  Created by Joanne on 11/25/15.
//  Copyright © 2015 joanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var timerLabel: UILabel!
    
    var count = 0
 
    @IBAction func buttonPressed() {
        count++
        scoreLabel.text = "Score \n\(count)" 
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

