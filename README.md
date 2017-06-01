# Butler

Swift bindings for the Jenkins
[remote access API](https://wiki.jenkins-ci.org/display/JENKINS/Remote+access+API).

## Example

Run `pod try Butler` to build and open the [example project](Example).

------

## Requirements

## Installation ➡️🔨

### Pick Your Poison ☠️

1. [CocoaPods](#cocoapods)
1. [Swift Package Manager](#swift-package-manager)
1. [Carthage](#carthage)
1. [CocoaSeeds](#cocoaseeds)

#### [CocoaPods](https://cocoapods.org)

> Until this framework is published to trunk, you will need to include the
[`git`](https://guides.cocoapods.org/syntax/podfile.html#pod) URL.

Add the following line to a target in your `Podfile`:

```ruby
target 'YourApp' do
  pod 'Butler', git: 'https://github.com/phatblat/Butler.git'
end
```

#### [Swift Package Manager](https://swift.org/package-manager/)

To use this library as a dependency for your own Swift package, add Butler as a
dependency like in the following example:

```swift
let package = Package(
    name: "YourPackage",
    dependencies: [
        .Package(url: "https://github.com/phatblat/Butler.git")
    ],
)
```

#### [Carthage](https://github.com/Carthage/Carthage)

- 🚧 Coming soon

#### [CocoaSeeds](https://github.com/devxoul/CocoaSeeds)

- 🚧 Coming soon

------

## Author

Ben Chatelain, ben@octop.ad

## License

Butler is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
