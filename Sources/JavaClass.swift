//
//  JavaClass.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 6/9/17.
//

import Foundation

enum JavaClass: String, Codable {
    case buildDiscarderProperty = "jenkins.model.BuildDiscarderProperty"
    case externalJob = "hudson.model.ExternalJob"
    case folder = "com.cloudbees.hudson.plugins.folder.Folder"
    case freestyleBuild = "hudson.model.FreeStyleBuild"
    case freestyleProject = "hudson.model.FreeStyleProject"
    case githubProject = "com.coravy.hudson.plugins.github.GithubProjectProperty"
    case matrixBuild = "hudson.matrix.MatrixBuild"
    case matrixProject = "hudson.matrix.MatrixProject"
    case mavenModuleSet = "hudson.maven.MavenModuleSet"
    case nullScm = "hudson.scm.NullSCM"
}
