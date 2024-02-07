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
    var showTitle: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let titleToShow = showTitle {
            title = titleToShow
        }
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
