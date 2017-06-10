// swift-tools-version:4.0
// https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescriptionV4.md
// https://github.com/apple/swift-package-manager/blob/master/Sources/PackageDescription4/Target.swift#L83

import PackageDescription

let package = Package(
    name: "Butler",
    products: [
        .library(name: "Butler", targets: ["Butler"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Butler",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "ButlerTests",
            dependencies: [
                .target(name: "Butler")
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
