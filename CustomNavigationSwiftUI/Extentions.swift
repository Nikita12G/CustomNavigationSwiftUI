//
//  Extentions.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

extension View {
    func pushNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .push))
    }
    
    func presentNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .present))
    }
    
    func customNavigation(view: AnyView, isActive: Bool) -> some View {
        modifier(NavigationModifier(view: view, isActive: isActive, transitionType: .custom))
    }
    
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}

extension Color {
    static func generateRandom() -> Color {
        Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1))
    }
}
