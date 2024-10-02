# TextColorizer

> Apply various colors depending on character classifications

## Overview
- TextColorizer is a Swift package designed to enhance text readability and aesthetic appeal by applying different colors to various types of characters within a string. 
- This package is ideal for applications that require clear visual categorization of text, such as educational tools, code editors, or any user interface that benefits from enhanced text features.

## Features
- **Dynamic Text Coloring**: Automatically assigns colors to letters, numbers, and symbols within a text.
- **Customizable Color Schemes**: Supports custom color schemes for different character types.
- **SwiftUI Support**: Easily integrates with SwiftUI for iOS and macOS applications.

## Installation
To integrate TextColorizer into your Xcode project using Swift Package Manager, add it as a dependency in your `Package.swift` file:

### Note on Dependencies
- **HybridColor Support**: TextColorizer utilizes the `HybridColor` package to support dynamic color schemes, including automatic adjustments for dark and light modes on macOS and iOS. This ensures that TextColorizer can seamlessly adapt to user interface style changes.

### Todo: 
- Fix the issue with light and dark colors from macOS
