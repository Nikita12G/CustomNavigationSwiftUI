//
//  ContentView.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showPushView = false
    @State private var showPresentView = false
    @State private var showCustomView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Push", action: { showPushView.toggle() })
                NavigationButton(title: "Present", action: { showPresentView.toggle() })
                NavigationButton(title: "Custom", action: { showCustomView.toggle() })
                
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .pushNavigation(view: ContentView().eraseToAnyView(), isActive: showPushView)
        .presentNavigation(view: ContentView().eraseToAnyView(), isActive: showPresentView)
        .customNavigation(view: ContentView().eraseToAnyView(), isActive: showCustomView)
    }
}

#Preview {
    ContentView()
}
