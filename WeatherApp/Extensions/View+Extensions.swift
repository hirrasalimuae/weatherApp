//
//  View+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI

extension View {
    public func frame(square: CGFloat, alignment: Alignment = .center) -> some View {
        frame(width: square, height: square, alignment: alignment)
    }
}
