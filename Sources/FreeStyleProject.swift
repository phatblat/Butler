//
//  FreeStyleProject.swift
//  Butler
//
//  Created by Ben Chatelain on 6/3/17.
//
//

import Foundation

struct FreeStyleProject {
    let _class: String
    let url: URL

    let buildable: Bool
    let concurrentBuild: Bool
    let inQueue: Bool
    let keepDependencies: Bool

    let nextBuildNumber: Int

    let description: String
    let displayName: String
    let fullDisplayName: String
    let fullName: String
    let healthReport: String
    let name: String
    let property: String
    let queueItem: String?
    let scm: String

    let builds: [String]
    let lastBuild: String?
    let lastCompletedBuild: String?
    let lastFailedBuild: String?
    let lastStableBuild: String?
    let lastSuccessfulBuild: String?
    let lastUnstableBuild: String?
    let lastUnsuccessfulBuild: String?

    let upstreamProjects: [String]
    let downstreamProjects: [String]
}
