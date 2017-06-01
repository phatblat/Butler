// swift-tools-version:3.1

import PackageDescription

let butler = Package(
    name: "Butler",
    swiftLanguageVersions: [3]
)

butler.testDependencies = [
    .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1)
]
