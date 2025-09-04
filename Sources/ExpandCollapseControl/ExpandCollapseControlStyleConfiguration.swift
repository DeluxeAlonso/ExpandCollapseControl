//
//  ExpandCollapseControlStyleConfiguration.swift
//  GithubJobs
//
//  Created by Alonso on 10/11/24.
//

import Foundation

/// Configuration options for customizing the appearance and behavior of expandable/collapsible controls.
///
/// Use this struct to configure various aspects of expand/collapse controls, including
/// icon appearance, sizing, and spacing between elements.
public struct ExpandCollapseControlStyleConfiguration {
    /// The name of the icon to display when the control is in expanded state.
    public let expandedIconName: String

    /// The name of the icon to display when the control is in collapsed state.
    public let collapsedIconName: String

    /// The size dimensions for both expanded and collapsed icons.
    public let iconSize: CGSize

    /// The padding between the icon and the content that follows it.
    public let iconTrailingPadding: CGFloat

    /// Vertical spacing between the collapsed and expanded content.
    public let verticalSpacing: CGFloat

    /// Horizontal spacing between elements in the control.
    public let horizontalSpacing: CGFloat

    public init(expandedIconName: String,
                collapsedIconName: String,
                iconSize: CGSize, iconTrailingPadding: CGFloat,
                verticalSpacing: CGFloat,
                horizontalSpacing: CGFloat) {
        self.expandedIconName = expandedIconName
        self.collapsedIconName = collapsedIconName
        self.iconSize = iconSize
        self.iconTrailingPadding = iconTrailingPadding
        self.verticalSpacing = verticalSpacing
        self.horizontalSpacing = horizontalSpacing
    }
}
