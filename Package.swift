// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "SwiftDecodePipeline",
  products: [
    .library(name: "SwiftDecodePipeline", targets: ["SwiftDecodePipeline"]),
  ],
  dependencies: [
    .package(name: "SwiftyJSON", url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.0"),
    .package(name: "Curry", url: "https://github.com/thoughtbot/Curry.git", from: "5.0.0"),
  ],
  targets: [
    .target(name: "SwiftDecodePipeline", dependencies: [.byName(name: "SwiftyJSON"), .byName(name: "Curry")]),
  ]
)
