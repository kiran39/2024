//
//  ListViewController.swift
//  TableViewWithStaticData
//
//  Created by Kiran Kumar on 06/02/24.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var listView: UITableView!
    let imageService = ImageService()
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
        fetchData()
    }
    
    func fetchData() {
        imageService.fetchImages { [weak self] images in
            guard let self = self else { return }
            self.pictures = images
            self.listView.reloadData()
        }
    }
    
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailViewController = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetialViewController {
            detailViewController.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
    
}
