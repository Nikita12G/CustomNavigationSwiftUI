//
//  PushContentView.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct PushContentView: View {
    @State private var showPresentView = false
    @EnvironmentObject private var navManager: NavigationManager
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            VStack {
                NavigationButton(title: "Present", action: { showPresentView.toggle() })
                if !navManager.screens.isEmpty {
                    BackToRootView(action: { navManager.returnToRoot() })
                }
            }
            .padding()
        }
        .presentNavigation(view: PresentContentView().eraseToAnyView(), isActive: showPresentView)
    }
}

#Preview {
    PushContentView()
}
