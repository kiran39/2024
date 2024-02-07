//
//  ViewController.swift
//  TableViewWithStaticData
//
//  Created by Kiran Kumar on 06/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Storm Viewer"
    }

    @IBAction func clickAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let listViewController = storyboard.instantiateViewController(withIdentifier: "Listview") as? ListViewController {
            navigationController?.pushViewController(listViewController, animated: true)
        }
    }
    
}

