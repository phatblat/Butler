// swift-tools-version:3.1

import PackageDescription

let butler = Package(
    name: "Butler",
    swiftLanguageVersions: [3]
)

butler.exclude = [
    "bin",
    "Docs",
    "Example",
    "gradle"
]

// testDependencies temporarily removed
// https://stackoverflow.com/questions/41401753/test-only-dependencies-when-using-the-swift-package-manager#answer-41407032
// butler.testDependencies = [
//     .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1)
// ]
