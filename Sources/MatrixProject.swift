//
//  MatrixProject.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

import Foundation

struct MatrixProject: Codable {
    let _class: JavaClass
    let activeConfigurations: [JobConfiguration]
    let buildable: Bool
    let builds: [MatrixBuild]
    let color: String?
    let concurrentBuild: Bool
    let description: String?
    let displayName: String?
    let displayNameOrNull: String?
    let downstreamProjects: [String]
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
    let upstreamProjects: [String]
    let url: URL
}
