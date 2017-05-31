// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Butler",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1)
    ],
    // {
    //     return [
    //         Target(name: "Butler"),
    //         Target(name: "ButlerTests", dependencies: [
    //         ]),
    //     ]
    // }(),
    swiftLanguageVersions: [3]
)
