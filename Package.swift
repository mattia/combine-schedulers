// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "combine-schedulers",
  platforms: [
    .iOS(.v10),
    .macOS(.v10_12),
    .tvOS(.v10),
    .watchOS(.v3),
  ],
  products: [
    .library(
      name: "CombineSchedulers",
      targets: ["CombineSchedulers"]
    )
  ],
  targets: [
    .target(
      name: "CombineSchedulers",
      swiftSettings: [
        .define("SWIFT_ENABLE_LIBRARY_EVOLUTION"),
        .define("BUILD_LIBRARY_FOR_DISTRIBUTION"),
      ]
    ),
    .testTarget(
      name: "CombineSchedulersTests",
      dependencies: ["CombineSchedulers"]
    ),
  ]
)
