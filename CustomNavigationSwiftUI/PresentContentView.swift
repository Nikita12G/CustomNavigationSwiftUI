//
//  PresentContentView.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct PresentContentView: View {
    @State private var showCustomView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Custom", action: { showCustomView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .customNavigation(view: CustomContentView().eraseToAnyView(), isActive: showCustomView)
    }
}

#Preview {
    PresentContentView()
}
