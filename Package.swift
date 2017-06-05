// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Butler",
    dependencies: [
        .Package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", versions: Version(1, 0, 0)..<Version(3, .max, .max)
        ),
    ],
    swiftLanguageVersions: [3]
)

package.exclude = [
    "Butler.podspec",
    "Butler.xcodeproj/",
    "Butler.xcworkspace/",
    "Docs/",
    "Example/",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "Package.pins",
    "Package.swift",
    "Podfile",
    "Podfile.lock",
    "Pods/",
    "README.md",
    "bin/",
    "build.gradle",
    "gradle/",
    "gradlew",
]

// testDependencies temporarily removed
// https://stackoverflow.com/questions/41401753/test-only-dependencies-when-using-the-swift-package-manager#answer-41407032
// package.testDependencies = [
//     .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1)
// ]
