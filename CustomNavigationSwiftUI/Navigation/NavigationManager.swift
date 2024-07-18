//
//  NavigationManager.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct Screen {
    let view: AnyView
    let transition: AnyTransition
}

final class NavigationManager: ObservableObject {
    @Published var screens: [Screen] = []
    
    func pushView(_ view: AnyView) {
        addScreen(Screen(view: view, transition: .slide))
    }
    
    func presentView(_ view: AnyView) {
        addScreen(Screen(view: view, transition: .move(edge: .bottom)))
    }
    
    func customView(_ view: AnyView) {
        addScreen(Screen(view: view, transition: .scale))
    }
    
    func popView() {
        screens.removeLast()
    }
    
    func returnToRoot() {
        screens.removeAll()
    }
    
    private func addScreen(_ screen: Screen) {
        screens.append(screen)
    }
}
