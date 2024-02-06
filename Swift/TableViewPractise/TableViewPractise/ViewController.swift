//
//  ViewController.swift
//  TableViewPractise
//
//  Created by Kiran Kumar on 04/02/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func clickAction(_ sender: Any) {
        // Instantiate the view controller from the storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let listViewController = storyboard.instantiateViewController(withIdentifier: "ListView") as? ListViewController {
            // Push or present the view controller as needed
            navigationController?.pushViewController(listViewController, animated: true)
            // OR
            // present(yourTableViewController, animated: true, completion: nil)
        }

    }
}

