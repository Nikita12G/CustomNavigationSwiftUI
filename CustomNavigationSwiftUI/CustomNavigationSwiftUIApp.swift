//
//  CustomNavigationSwiftUIApp.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

@main
struct CustomNavigationSwiftUI: App {
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(NavigationManager())
         }
    }
}
