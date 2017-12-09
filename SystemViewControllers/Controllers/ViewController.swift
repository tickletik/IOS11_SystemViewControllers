//
//  ViewController.swift
//  SystemViewControllers
//
//  Created by ronny abraham on 12/9/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//

import UIKit
import SafariServices

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
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        let selectedSegment = sender.selectedSegmentIndex
        if let segmentTitle = sender.titleForSegment(at: selectedSegment) {
            switch segmentTitle {
            case "Share":
                shareAction(sender)
                break
            case "Safari":
                safariAction(sender)
                break
            case "Camera":
                photoAction(sender)
                break
            case "Email":
                emailAction(sender)
                break
            default:
                print("nothing chosen")
            }
        }
        
    }
    
    func shareAction(_ sender: UISegmentedControl) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    func safariAction(_ sender: UISegmentedControl) {
        if let url = URL(string: "http://www.apple.com") {
            let safariViewController = SFSafariViewController(url: url)
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    func photosAction(_ sender: UISegmentedControl) {
        print("take a picture")
    }
    
    func emailAction(_ sender: UISegmentedControl) {
        print("send an email")
    }
}

