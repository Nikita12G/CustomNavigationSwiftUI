//
//  BackToRootView.swift
//  CustomNavigationSwiftUI
//
//  Created by Никита Гуляев on 18.07.2024.
//

import SwiftUI

struct BackToRootView: View {
    let action: () -> Void
    
    var body: some View {
        HStack {
            Image(systemName: "arrow.left")
            Text("Back to Root")
        }
        .foregroundColor(.black)
        .onTapGesture(perform: action)
    }
}
