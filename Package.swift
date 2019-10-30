// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SnapKitExtension",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SnapKitExtension",
            targets: ["SnapKitExtension"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMajor(from: "5.0.1")),
    ],
    targets: [
         .target(
            name: "SnapKitExtension",
            dependencies: ["SnapKit"],
            path: "Source")],
    swiftLanguageVersions: [.v4_2]
)
