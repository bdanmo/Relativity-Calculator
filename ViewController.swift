//
//  ViewController.swift
//  Relativity Calculator
//
//  Created by Brendan Moran on 10/3/17.
//  Copyright © 2017 Brendan Moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var travelSpeed: UITextField!
    @IBOutlet weak var yearsTraveled: UITextField!
    @IBOutlet weak var earthYearsPassed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateDifference(_ sender: Any) {
        if let time = yearsTraveled.text, let speed = travelSpeed.text {
            if let dTime = Double(time), let dSpeed = Double(speed) {
                let earthTime = calculate(timeTraveled: dTime, travelSpeed: dSpeed)
                earthYearsPassed.text = String(earthTime)
            }
        }
    }
    
}

