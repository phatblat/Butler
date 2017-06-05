//
//  Folder.swift
//  Butler
//
//  Created by Ben Chatelain on 6/4/17.
//
//

import SwiftyJSON
import Foundation

struct Folder {
    let _class: String
    let url: URL
}

extension Folder {
    init?(json plainJson: JSONDictionary) {
        let json = JSON(plainJson)

        // Required properties
        guard let _class = json["_class"].string,
            let url = json["url"].url
        else {
                return nil
        }

        self._class = _class
        self.url = url
    }
}
