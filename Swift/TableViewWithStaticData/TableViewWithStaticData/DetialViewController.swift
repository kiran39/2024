//
//  DetialViewController.swift
//  TableViewWithStaticData
//
//  Created by Kiran Kumar on 07/02/24.
//

import UIKit

class DetialViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }

}
