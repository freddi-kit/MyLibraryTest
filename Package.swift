// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibraryTest",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .plugin(name: "Command", targets: ["Command"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "swiftgen",
            url: "https://github.com/SwiftGen/SwiftGen/releases/download/6.6.2/swiftgen-6.6.2.artifactbundle.zip",
            checksum: "7586363e24edcf18c2da3ef90f379e9559c1453f48ef5e8fbc0b818fbbc3a045"
        ),
        .plugin(
            name: "Command",
            capability: .command(
                intent: .custom(verb: "command",
                                description: "command"),
                permissions: [.writeToPackageDirectory(reason: "command")]
            ),
            path: "Plugins/Command"
        ),
    ]
)
