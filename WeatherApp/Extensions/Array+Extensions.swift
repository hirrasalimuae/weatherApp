//
//  Array+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
