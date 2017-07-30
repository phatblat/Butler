// swift-tools-version:4.0
// https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescriptionV4.md
// https://github.com/apple/swift-package-manager/blob/master/Sources/PackageDescription4/Target.swift#L83

import PackageDescription

/// Local relative path to folder containing Quick and Nimble repos.
let containingFolder = "../../ios/pods"

let package = Package(
    name: "Butler",
    products: [
        .library(name: "Butler", targets: ["Butler"]),
    ],
    dependencies: [
        .package(url: "git@github.com:Quick/Quick.git",
            .branch("xcode-9-fix")),
            //from: "1.1.0"),
        // .package(url: "\(containingFolder)/Quick", .branch("master")),
        .package(url: "git@github.com:Quick/Nimble.git",
            .branch("master")),
            // from: "7.0.1"),
        // .package(url: "\(containingFolder)/Nimble", .branch("xcode9-beta")),
    ],
    targets: [
        .target(
            name: "Butler",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "ButlerTests",
            dependencies: [
                .target(name: "Butler"),
                "Quick",
                "Nimble",
            ],
            path: "Tests/ButlerTests"
        ),
    ],
    swiftLanguageVersions: [4]
)

let version = Version(0, 1, 0)

// package.exclude = [
//     "Butler.podspec",
//     "Butler.xcodeproj/",
//     "Butler.xcworkspace/",
//     "Docs/",
//     "Example/",
//     "Gemfile",
//     "Gemfile.lock",
//     "LICENSE",
//     "Package.pins",
//     "Package.swift",
//     "Podfile",
//     "Podfile.lock",
//     "Pods/",
//     "README.md",
//     "bin/",
//     "build.gradle",
//     "gradle/",
//     "gradlew",
// ]

// testDependencies temporarily removed
// https://stackoverflow.com/questions/41401753/test-only-dependencies-when-using-the-swift-package-manager#answer-41407032
// package.testDependencies = [
//     .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1)
// ]
