//
//  Folder.swift
//  Butler
//
//  Created by Ben Chatelain on 6/4/17.
//
//
//
import Foundation

// MARK: - Storage & Init

/**
    A folder containing zero or more Jobs.

    - Since: 0.1
 */
struct Folder: Codable {
    /// Fuly qualified name of the correspinding Java class in Jenkins.
    let _class: String
    var actions: [Dictionary<String, String>]
    let description: String?
    let displayName: String
    let displayNameOrNull: String?
    let fullDisplayName: String
    let fullName: String
    let healthReport: [String]
    let jobs: [Dictionary<String, String>]
    let name: String
    let primaryView: Dictionary<String, String>
    let views: [Dictionary<String, String>]
    let url: String
}
