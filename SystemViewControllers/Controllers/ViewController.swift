//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by ronny abraham on 12/9/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
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
                    shareAction(sender)
                    break
                case "Safari":
                    safariAction()
                    break
                case "Camera":
                    cameraAction()
                    break
                case "Email":
                    emailAction()
                    break
                default:
                    print("nothing chosen")
                }
            }
        }
    }
    
    func shareAction(_ sender: UISegmentedControl) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    func safariAction() {
        print("going on safari")
    }
    
    func cameraAction() {
        print("take a picture")
    }
    
    func emailAction() {
        print("send an email")
    }
}

