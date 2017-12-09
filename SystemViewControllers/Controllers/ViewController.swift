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
    
    @IBAction func shareButtonAction(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true, completion: nil)
    }
    
    
    @IBAction func safariButtonAction(_ sender: UIButton) {
    }
    @IBAction func photosButtonAction(_ sender: UIButton) {
    }
    @IBAction func emailButtonAction(_ sender: UIButton) {
    }
    
    
    
    
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        
        let selectedSegment = sender.selectedSegmentIndex
        if let segmentTitle = sender.titleForSegment(at: selectedSegment) {
            switch segmentTitle {
            case "Share":
                //shareAction(sender)
                break
            case "Safari":
                safariAction(sender)
                break
            case "Camera":
                photosAction(sender)
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
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { action in
            print("User selected Camera Action")
        })
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { action in
            print("User selected Photo Library action")
        })

        alertController.addAction(cancelAction)
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        
        alertController.popoverPresentationController?.sourceView = sender

        present(alertController, animated: true, completion: nil)
    }
    
    func emailAction(_ sender: UISegmentedControl) {
        print("send an email")
    }
}

