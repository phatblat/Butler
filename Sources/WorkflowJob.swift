//
//  WorkflowJob.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 8/13/17.
//

import Foundation

struct WorkflowJob: Codable {
    let _class: JavaClass
    let actions: [[String: JavaClass]]
    let buildable: Bool
    let builds: [String]
    let color: String
    let concurrentBuild: Bool
    let description: String?
    let displayName: String?
    let displayNameOrNull: String?
    let firstBuild: MatrixBuild?
    let fullDisplayName: String
    let fullName: String
    let healthReport: [HealthReport]
    let inQueue: Bool
    let keepDependencies: Bool
    let lastBuild: MatrixBuild?
    let lastCompletedBuild: MatrixBuild?
    let lastFailedBuild: MatrixBuild?
    let lastStableBuild: MatrixBuild?
    let lastSuccessfulBuild: MatrixBuild?
    let lastUnstableBuild: MatrixBuild?
    let lastUnsuccessfulBuild: MatrixBuild?
    let name: String
    let nextBuildNumber: Int
    let property: [JobProperty]
    let queueItem: String?
    let url: URL
}
