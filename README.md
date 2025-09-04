# ExpandCollapseControl

A customizable SwiftUI component that provides an elegant expand/collapse interface with configurable styling options.

## Overview

The ExpandCollapseControl component helps create intuitive collapsible content sections in SwiftUI applications. Built on top of SwiftUI's `DisclosureGroup`, it provides enhanced customization options for icons, spacing, and animations while maintaining clean separation between content and presentation logic.

## Features

- **Customizable Icons**: Support for different SF Symbols in expanded and collapsed states
- **Flexible Content**: Generic content support for both collapsed and expanded views
- **Smooth Animations**: Built-in animation transitions for expand/collapse actions
- **Configurable Styling**: Comprehensive styling options for spacing, sizing, and appearance
- **SwiftUI Native**: Built using SwiftUI's `DisclosureGroup` for optimal performance

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/DeluxeAlonso/ExpandCollapseControl.git", from: "1.0.0")
]
```

### Manual Installation

Copy the following files to your Xcode project:
- `ExpandCollapseControlContent.swift`
- `ExpandCollapseControlDisclosureStyle.swift`
- `ExpandCollapseControlStyleConfiguration.swift`

## Basic Usage

### 1. Simple expand/collapse section

```swift
import SwiftUI

struct ContentView: View {
    @State private var isExpanded = false
    
    var body: some View {
        ExpandCollapseControlContent(
            isExpanded: $isExpanded,
            collapsedContent: {
                Text("Job Details")
                    .font(.headline)
            },
            expandedContent: {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Software Engineer position")
                    Text("Remote work available")
                    Text("Competitive salary")
                }
                .padding(.leading)
            },
            styleConfiguration: .default
        )
        .padding()
    }
}
```

### 2. Custom styling configuration

```swift
extension ExpandCollapseControlStyleConfiguration {
    static let `default` = ExpandCollapseControlStyleConfiguration(
        expandedIconName: "chevron.up",
        collapsedIconName: "chevron.down",
        iconSize: CGSize(width: 16, height: 16),
        iconTrailingPadding: 8,
        verticalSpacing: 12,
        horizontalSpacing: 8
    )
    
    static let large = ExpandCollapseControlStyleConfiguration(
        expandedIconName: "minus.circle.fill",
        collapsedIconName: "plus.circle.fill",
        iconSize: CGSize(width: 24, height: 24),
        iconTrailingPadding: 12,
        verticalSpacing: 16,
        horizontalSpacing: 10
    )
}
```

### Custom Animation Styles

```swift
// The component automatically uses SwiftUI's default animation
// For custom animations, wrap the state change:

Button("Toggle All Sections") {
    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
        isDescriptionExpanded.toggle()
        isRequirementsExpanded.toggle()
        isBenefitsExpanded.toggle()
    }
}
```

## Configuration Options

The `ExpandCollapseControlStyleConfiguration` provides comprehensive customization:

| Property | Type | Description |
|----------|------|-------------|
| `expandedIconName` | `String` | SF Symbol name for expanded state |
| `collapsedIconName` | `String` | SF Symbol name for collapsed state |
| `iconSize` | `CGSize` | Size dimensions for both icons |
| `iconTrailingPadding` | `CGFloat` | Padding between icon and trailing content |
| `verticalSpacing` | `CGFloat` | Vertical spacing between collapsed and expanded content |
| `horizontalSpacing` | `CGFloat` | Horizontal spacing between elements in the control |

## Architecture

The component follows a clean separation of concerns:

1. **`ExpandCollapseControlContent`**: Main public interface accepting generic collapsed and expanded content
2. **`ExpandCollapseControlDisclosureStyle`**: Custom `DisclosureGroupStyle` handling visual layout and interactions
3. **`ExpandCollapseControlStyleConfiguration`**: Configuration struct for appearance customization

The implementation leverages SwiftUI's `DisclosureGroup` for optimal performance and native behavior while providing enhanced customization capabilities.

## Best Practices

1. **Use Consistent Styling**: Create shared style configurations for consistent appearance across your app
2. **Keep Content Lightweight**: Avoid heavy computations in expanded content closures
3. **Provide Clear Labels**: Use descriptive text and appropriate icons for collapsed content
4. **Consider Accessibility**: Ensure content is accessible with VoiceOver and other assistive technologies
5. **Test on Different Sizes**: Verify appearance across different device sizes and orientations

## Requirements

- iOS 16.0+
- Swift 5.3+

## License

This package is available under the MIT license. See the LICENSE file for more info.
