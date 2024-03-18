//
//  Image+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import SwiftUI

extension Image {
    init(unfilledSymbol: String) {
        if let _ = UIImage(systemName: unfilledSymbol + ".fill") {
            self = Image(systemName: unfilledSymbol + ".fill")
        } else {
            self = Image(systemName: unfilledSymbol)
        }
    }
}
