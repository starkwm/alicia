// swift-tools-version:5.10

import PackageDescription

let package = Package(
  name: "alicia",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    .library(name: "Alicia", targets: ["Alicia"])
  ],
  dependencies: [],
  targets: [
    .target(name: "Alicia", dependencies: []),
    .testTarget(name: "AliciaTests", dependencies: ["Alicia"]),
  ]
)
