// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Alicia",
    platforms: [
        .macOS(.v10_14),
    ],
    products: [
        .library(name: "Alicia", targets: ["Alicia"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Alicia", dependencies: []),
        .testTarget(name: "AliciaTests", dependencies: ["Alicia"]),
    ]
)
