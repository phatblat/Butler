//
//  ExternalJob.swift
//  Butler
//
//  Created by Ben Chatelain on 6/8/17.
//

import Foundation

struct ExternalJob: Codable {
    var _class: String?
//    var actions: String?
    var buildable: Bool
    var builds: [String]
    var color: String?
    var description: String?
    var displayName: String?
    var displayNameOrNull: String?
    var firstBuild: String?
    var fullDisplayName: String?
    var fullName: String?
    var healthReport: [String]
    var inQueue: Bool
    var keepDependencies: Bool
    var lastBuild: String?
    var lastCompletedBuild: String?
    var lastFailedBuild: String?
    var lastStableBuild: String?
    var lastSuccessfulBuild: String?
    var lastUnstableBuild: String?
    var lastUnsuccessfulBuild: String?
    var name: String?
    var nextBuildNumber: Int
    var property: [String]
    var queueItem: String?
    var url: String?
}
