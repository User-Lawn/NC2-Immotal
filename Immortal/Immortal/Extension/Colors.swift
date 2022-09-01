//
//  Colors.swift
//  Immortal
//
//  Created by Jun.Mac on 2022/09/01.
//

import SwiftUI

extension Color {
    static let BackgroundColor = Color("BackgroundColor")
    static let PrimaryColor = LinearGradient(gradient: Gradient(colors: [Color("TopColor"), Color("BottomColor")]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
