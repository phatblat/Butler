//
//  OrganizationFolder.swift
//  ButlerTests
//
//  Created by Ben Chatelain on 8/12/17.
//

import Foundation

struct OrganizationFolder: Codable {
    let _class: JavaClass
    let actions: [Dictionary<String, JavaClass>]
    let description: String?
    let displayName: String
    let displayNameOrNull: String?
    let fullDisplayName: String
    let fullName: String
    let healthReport: [HealthReport]
    let jobs: [String]
    let name: String
    let primaryView: Dictionary<String, String>
    let url: URL
    let views: [Dictionary<String, String>]
}
