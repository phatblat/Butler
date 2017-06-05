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

    let description: String?
    let displayName: String
    let displayNameOrNull: String?
    let fullDisplayName: String
    let fullName: String
    let name: String
    let primaryView: String

    let jobs: [String]
    let actions: [String]
    let healthReport: [String]
    let views: [String]
}

extension Folder {
    init?(json plainJson: JSONDictionary) {
        let json = JSON(plainJson)

        // Required properties
        guard let _class = json["_class"].string,
            let url = json["url"].url,
            let displayName = json["displayName"].string,
            let fullDisplayName = json["fullDisplayName"].string,
            let fullName = json["fullName"].string,
            let name = json["name"].string,
            let primaryView = json["primaryView"]["name"].string
        else {
            return nil
        }

        self._class = _class
        self.url = url
        self.displayName = displayName
        self.fullDisplayName = fullDisplayName
        self.fullName = fullName
        self.name = name
        self.primaryView = primaryView

        // Optional properties
        description = json["description"].string
        displayNameOrNull = json["displayNameOrNull"].string

        // Lists
        jobs = json["jobs"].arrayValue.map({$0["name"].stringValue})
        actions = json["actions"].arrayValue.map({$0["_class"].stringValue})
        healthReport = []
        views = json["views"].arrayValue.map({$0["name"].stringValue})
    }
}
