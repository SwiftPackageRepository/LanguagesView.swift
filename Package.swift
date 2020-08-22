// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LanguagesView",
    platforms: [ .iOS(SupportedPlatform.IOSVersion.v13),
                 .macOS(SupportedPlatform.MacOSVersion.v10_15),
                 .tvOS(SupportedPlatform.TVOSVersion.v13),
                 .watchOS(SupportedPlatform.WatchOSVersion.v6)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LanguagesView",
            targets: ["LanguagesView"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/SwiftPackageRepository/ISO639.swift.git",
            from: "1.1.5"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LanguagesView",
            dependencies: []),
//            dependencies: ["ISO639"]),
        .testTarget(
            name: "LanguagesViewTests",
            dependencies: ["LanguagesView"]),
    ]
)
