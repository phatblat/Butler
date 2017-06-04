//
//  FreeStyleProject.swift
//  Butler
//
//  Created by Ben Chatelain on 6/3/17.
//
//

import SwiftyJSON
import Foundation

struct FreeStyleProject {
    let _class: String
    let url: URL

    let buildable: Bool
    let concurrentBuild: Bool
    let inQueue: Bool
    let keepDependencies: Bool

    let nextBuildNumber: Int

    let color: String
    let description: String
    let displayName: String
    let fullDisplayName: String
    let fullName: String
    let name: String
    let queueItem: String?
    let scm: String

    let firstBuild: String?
    let lastBuild: String?
    let lastCompletedBuild: String?
    let lastFailedBuild: String?
    let lastStableBuild: String?
    let lastSuccessfulBuild: String?
    let lastUnstableBuild: String?
    let lastUnsuccessfulBuild: String?

    let healthReport: String
    let property: [String]
    let builds: [String]
    let upstreamProjects: [String]
    let downstreamProjects: [String]
}

extension FreeStyleProject {
    init?(json plainJson: JSONDictionary) {
        let json = JSON(plainJson)

        // Required properties
        guard let _class = json["_class"].string,
            let url = json["url"].url,
            let buildable = json["buildable"].bool,
            let concurrentBuild = json["concurrentBuild"].bool,
            let color = json["color"].string,
            let description = json["description"].string,
            let displayName = json["displayName"].string,
            let fullDisplayName = json["fullDisplayName"].string,
            let fullName = json["fullName"].string,
            let healthReport = json["healthReport"][0]["description"].string,
            let inQueue = json["inQueue"].bool,
            let keepDependencies = json["keepDependencies"].bool,
            let name = json["name"].string,
            let nextBuildNumber = json["nextBuildNumber"].int,
            let scm = json["scm"]["_class"].string
        else {
            return nil
        }

        self._class = _class
        self.url = url
        self.buildable = buildable
        self.color = color
        self.concurrentBuild = concurrentBuild
        self.description = description
        self.displayName = displayName
        self.fullDisplayName = fullDisplayName
        self.fullName = fullName
        self.healthReport = healthReport
        self.inQueue = inQueue
        self.keepDependencies = keepDependencies
        self.name = name
        self.nextBuildNumber = nextBuildNumber
        self.scm = scm

        // TEMP: Extracting only the url until we have a Build model
        builds = json["builds"].arrayValue.map({$0["url"].stringValue})
        upstreamProjects = json["upstreamProjects"].arrayValue.map({$0["url"].stringValue})
        downstreamProjects = json["downstreamProjects"].arrayValue.map({$0["url"].stringValue})

        // TEMP: Need example of real properties
//        self.property = json["property"].array
        property = []

        queueItem = json["queueItem"].string
        firstBuild = json["firstBuild"]["url"].string
        lastBuild = json["lastBuild"]["url"].string
        lastCompletedBuild = json["lastCompletedBuild"]["url"].string
        lastFailedBuild = json["lastFailedBuild"]["url"].string
        lastStableBuild = json["lastStableBuild"]["url"].string
        lastSuccessfulBuild = json["lastSuccessfulBuild"]["url"].string
        lastUnstableBuild = json["lastUnstableBuild"]["url"].string
        lastUnsuccessfulBuild = json["lastUnsuccessfulBuild"]["url"].string
    }
}
