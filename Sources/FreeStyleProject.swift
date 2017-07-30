//
//  FreeStyleProject.swift
//  Butler
//
//  Created by Ben Chatelain on 6/3/17.
//
//

import Foundation

// MARK: - Storage & Init

/**
    A basic Jenkins Job.

    - Since: 0.1
 */
struct FreeStyleProject: Codable {
    /// Fully qualified name of the correspinding Java class in Jenkins.
    let _class: JavaClass
    let actions: [Dictionary<String, String>]
    let buildable: Bool
    let builds: [FreeStyleBuild]
    let color: String
    let concurrentBuild: Bool
    let description: String
    let displayName: String
    let displayNameOrNull: String?
    let downstreamProjects: [String]
    let firstBuild: FreeStyleBuild
    let fullDisplayName: String
    let fullName: String
    let healthReport: [HealthReport]
    let inQueue: Bool
    let keepDependencies: Bool
    let lastBuild: FreeStyleBuild
    let lastCompletedBuild: FreeStyleBuild
    let lastFailedBuild: FreeStyleBuild?
    let lastStableBuild: FreeStyleBuild
    let lastSuccessfulBuild: FreeStyleBuild
    let lastUnstableBuild: FreeStyleBuild?
    let lastUnsuccessfulBuild: FreeStyleBuild?
    let name: String
    let nextBuildNumber: Int
    let property: [String]
    let queueItem: String?
    let scm: [String: String]
    let upstreamProjects: [String]
    let url: URL
}
