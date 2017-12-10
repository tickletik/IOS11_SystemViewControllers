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
    
    
    
    @IBAction func safariButtonAction(_ sender: Any) {
        if let url = URL(string: "http://www.apple.com") {
            
            let safariViewController = SFSafariViewController(url: url)
            
            present(safariViewController, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func photoButtonAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
       
        let cameraAction = UIAlertAction(title: "Camera", style: .default, handler: { action in
            print("User selected camera")
        })
        alertController.addAction(cameraAction)
        
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default, handler: { action in
            print("Users selected Photo Library")
        })
        alertController.addAction(photoLibraryAction)
        
        alertController.popoverPresentationController?.sourceView = sender
        present(alertController, animated: true, completion: nil)
        
        
    }
    
    @IBAction func emailButtonAction(_ sender: UIButton) {
    }
    
}

