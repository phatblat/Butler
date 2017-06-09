//
//  ExternalJob.swift
//  Butler
//
//  Created by Ben Chatelain on 6/8/17.
//

import Foundation

struct ExternalJob: Codable {
    let _class: String
    let actions: [Dictionary<String, String>]
    let buildable: Bool
    let builds: [String]
    let color: String?
    let description: String?
    let displayName: String?
    let displayNameOrNull: String?
    let firstBuild: String?
    let fullDisplayName: String?
    let fullName: String?
    let healthReport: [String]
    let inQueue: Bool
    let keepDependencies: Bool
    let lastBuild: String?
    let lastCompletedBuild: String?
    let lastFailedBuild: String?
    let lastStableBuild: String?
    let lastSuccessfulBuild: String?
    let lastUnstableBuild: String?
    let lastUnsuccessfulBuild: String?
    let name: String?
    let nextBuildNumber: Int
    let property: [String]
    let queueItem: String?
    let url: URL
}
