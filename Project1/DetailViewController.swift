//
//  DetailViewController.swift
//  Project1
//
//  Created by Wilman Garcia De Leon on 11/8/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var count = 0
    var selectedNunber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        title = "This image is \(selectedNunber) of \(count)"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }



}
