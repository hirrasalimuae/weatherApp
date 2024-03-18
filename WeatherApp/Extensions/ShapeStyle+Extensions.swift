//
//  ShapeStyle+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI

extension ShapeStyle where Self == Color {
    static func cellBackgroundColour(for colorScheme: ColorScheme) -> Color {
        if colorScheme == .light {
            return .white.opacity(0.3)
        } else {
            return .black.opacity(0.3)
        }
    }
}
