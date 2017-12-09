//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by ronny abraham on 12/9/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentTapped(_ sender: Any) {
        
        if let sender = sender as? UISegmentedControl {
            if sender.selectedSegmentIndex == 0 {
                print("share")
            }
            
            let selectedSegment = sender.selectedSegmentIndex
            print("selected segment: \(selectedSegment)")
        }
    }
}

