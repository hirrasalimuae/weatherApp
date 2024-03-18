//
//  String+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

extension String {
    var sentenceCased: String {
        prefix(1).capitalized + dropFirst()
    }
}
