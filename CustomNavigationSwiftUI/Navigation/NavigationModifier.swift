//
//  NavigationModifier.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

enum TransitionType {
    case push, present, custom
}

struct NavigationModifier: ViewModifier {
    @EnvironmentObject private var navManager: NavigationManager
    let view: AnyView
    let isActive: Bool
    let transitionType: TransitionType
    
    func body(content: Content) -> some View {
        content.onChange(of: isActive) { active in
            withAnimation {
                switch transitionType {
                case .push:
                    navManager.pushView(view)
                case .present:
                    navManager.presentView(view)
                case .custom:
                    navManager.customView(view)
                }
            }
        }
    }
}
