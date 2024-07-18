//
//  CustomContentView.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct CustomContentView: View {
    @State private var showPushView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Push", action: { showPushView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .pushNavigation(view: PushContentView().eraseToAnyView(), isActive: showPushView)
    }
}

#Preview {
    CustomContentView()
}
