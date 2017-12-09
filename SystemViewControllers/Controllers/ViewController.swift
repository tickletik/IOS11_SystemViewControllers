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
            
            let selectedSegment = sender.selectedSegmentIndex
            if let segmentTitle = sender.titleForSegment(at: selectedSegment) {
                switch segmentTitle {
                case "Share":
                    print("there is a share")
                    break
                case "Safari":
                    print("going on safari")
                    break
                case "Camera":
                    print("take a picture!")
                    break
                case "Email":
                    print("send an email")
                    break
                default:
                    print("nothing chosen")
                }
            }
        }
    }
    
}

