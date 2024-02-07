//
//  ImageService.swift
//  TableViewWithStaticData
//
//  Created by Kiran Kumar on 06/02/24.
//

import Foundation

class ImageService {
    func fetchImages() -> [String]{
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        var pictures = [String]()

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        return pictures
    }
}
