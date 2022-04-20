//
//  TooltipViewExtension.swift
//
//  Created by Antoni Silvestrovic on 24/10/2020.
//  Copyright © 2020 Quassum Manus. All rights reserved.
//

import SwiftUI

public extension View {
    func tooltip<TooltipContent: View>(isPresented: Binding<Bool>, @ViewBuilder content: @escaping () -> TooltipContent) -> some View {
        let config: TooltipConfig = DefaultTooltipConfig.shared

        return modifier(TooltipModifier(isPresented: isPresented, config: config, content: content))
    }

    func tooltip<TooltipContent: View>(isPresented: Binding<Bool>, config: TooltipConfig, @ViewBuilder content: @escaping () -> TooltipContent) -> some View {
         modifier(TooltipModifier(isPresented: isPresented, config: config, content: content))
     }

     func tooltip<TooltipContent: View>(isPresented: Binding<Bool>, _ side: TooltipSide, @ViewBuilder content: @escaping () -> TooltipContent) -> some View {
         var config = DefaultTooltipConfig.shared
         config.side = side

         return modifier(TooltipModifier(isPresented: isPresented, config: config, content: content))
     }

     func tooltip<TooltipContent: View>(isPresented: Binding<Bool>, _ side: TooltipSide, config: TooltipConfig, @ViewBuilder content: @escaping () -> TooltipContent) -> some View {
         var config = config
         config.side = side

         return modifier(TooltipModifier(isPresented: isPresented, config: config, content: content))
     }
}
