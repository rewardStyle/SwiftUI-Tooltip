//
//  DefaultTooltipConfig.swift
//
//  Created by Antoni Silvestrovic on 24/10/2020.
//  Copyright © 2020 Quassum Manus. All rights reserved.
//

import SwiftUI

public struct DefaultTooltipConfig: TooltipConfig {
    static var shared = DefaultTooltipConfig()

    public var side: TooltipSide = .leading
    public var margin: CGFloat = 8

    public var borderRadius: CGFloat = 8
    public var borderWidth: CGFloat = 2
    public var borderColor: Color = Color.black
    public var backgroundColor: Color = Color.black

    public var contentPaddingLeft: CGFloat = 8
    public var contentPaddingRight: CGFloat = 8
    public var contentPaddingTop: CGFloat = 4
    public var contentPaddingBottom: CGFloat = 4

    public var contentPaddingEdgeInsets: EdgeInsets {
        EdgeInsets(
            top: contentPaddingTop,
            leading: contentPaddingLeft,
            bottom: contentPaddingBottom,
            trailing: contentPaddingRight
        )
    }

    public var showArrow: Bool = true
    public var arrowWidth: CGFloat = 12
    public var arrowHeight: CGFloat = 6
    
    public var enableAnimation: Bool = false
    public var animationOffset: CGFloat = 10
    public var animationTime: Double = 1

    public init() {}

    public init(side: TooltipSide) {
        self.side = side
    }
}
