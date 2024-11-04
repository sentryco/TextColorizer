[![Tests](https://github.com/sentryco/TextColorizer/actions/workflows/Tests.yml/badge.svg)](https://github.com/sentryco/TextColorizer/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/cd6852ac-d052-4981-ae79-e9c0e2986248)](https://codebeat.co/projects/github-com-sentryco-textcolorizer-main)

# TextColorizer

> Apply various colors depending on character classifications

## Overview
- TextColorizer is a Swift package designed to enhance text readability and aesthetic appeal by applying different colors to various types of characters within a string. 
- This package is ideal for applications that require clear visual categorization of text, such as educational tools, code editors, or any user interface that benefits from enhanced text features.

## Features
- **Dynamic Text Coloring**: Automatically assigns colors to letters, numbers, and symbols within a text.
- **Customizable Color Schemes**: Supports custom color schemes for different character types.
- **SwiftUI Support**: Easily integrates with SwiftUI for iOS and macOS applications.

## Usage

To use the `TextColorizer` package in your Swift project, you can follow these steps to apply color schemes to different types of characters within a string:

1. Import the `TextColorizer` package in your Swift file:
   ```swift
   import TextColorizer
   ```

2. Define a string that you want to colorize:
   ```swift
   let sampleText = "Hello123!"
   ```

3. Use the `attributedString` function to apply colors to the string:
   ```swift
   let coloredText = AttributedString.attributedString(text: sampleText)
   ```

4. Display the colored text in your SwiftUI view (if using SwiftUI):
   ```swift
   Text(coloredText)
   ```

Here is a complete example of a SwiftUI view that uses `TextColorizer`:

```swift
import SwiftUI
import TextColorizer

struct ContentView: View {
    var body: some View {
        let sampleText = "Hello123!"
        let coloredText = AttributedString.attributedString(text: sampleText, colors: (.orange, .pink, .indigo))
        return Text(coloredText)
    }
}
```

## Installation

To integrate the `TextColorizer` package into your Swift project using Swift Package Manager, you can follow these steps:

1. Open your Xcode project.
2. Navigate to `File` -> `Swift Packages` -> `Add Package Dependency...`.
3. Paste the repository URL: `https://github.com/sentryco/TextColorizer.git`
4. Choose the branch `main` to always use the latest version on the main branch.
5. Click on `Next` and select the target where you want to use the library.

Ensure that your `Package.swift` includes `TextColorizer` as a dependency:

```swift
// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "YourPackageName",
    products: [
        .library(
            name: "YourPackageName",
            targets: ["YourTargetName"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sentryco/TextColorizer", branch: "main")
    ],
    targets: [
        .target(
            name: "YourTargetName",
            dependencies: ["TextColorizer"]),
        .testTarget(
            name: "YourPackageNameTests",
            dependencies: ["YourTargetName"]),
    ]
)
```

### Note on Dependencies
- **HybridColor Support**: TextColorizer utilizes the `HybridColor` package to support dynamic color schemes, including automatic adjustments for dark and light modes on macOS and iOS. This ensures that TextColorizer can seamlessly adapt to user interface style changes.

### Todo: 
- Fix the issue with light and dark colors from macOS
- Remove tests?
