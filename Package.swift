// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TextColorizer",
    platforms: [
        .macOS(.v14), 
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "TextColorizer",
            targets: ["TextColorizer"]),
    ],
    dependencies: [
        // Use the latest commit on the 'main' branch
        .package(url: "https://github.com/sentryco/HybridColor.git", branch: "main")
    ],
    targets: [
        .target(
            name: "TextColorizer",
            dependencies: ["HybridColor"]), // Ensure HybridColor is added as a dependency
        .testTarget(
            name: "TextColorizerTests",
            dependencies: ["TextColorizer"]),
    ]
)
