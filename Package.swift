// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "AILabTools",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(name: "AILabTools", targets: ["AILabTools"]),
    ],
    targets: [
        .target(
            name: "AILabTools",
            path: "packages/swift/Sources/AILabTools"
        ),
        .testTarget(
            name: "AILabToolsTests",
            dependencies: ["AILabTools"],
            path: "packages/swift/Tests/AILabToolsTests"
        ),
    ]
)
