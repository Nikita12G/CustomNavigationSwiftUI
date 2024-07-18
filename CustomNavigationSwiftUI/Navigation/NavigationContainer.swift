//
//  NavigationContainer.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct NavigationContainer<Content: View>: View {
    
    @EnvironmentObject private var navManager: NavigationManager
    let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack {
            content
            ForEach(Array(navManager.screens.enumerated()), id: \.offset) { _, screen in
                screen.view
                    .transition(screen.transition)
            }
        }
    }
}
