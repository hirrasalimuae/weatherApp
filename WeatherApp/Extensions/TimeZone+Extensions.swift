//
//  TimeZone+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

extension TimeZone {
    static func from(identifier: TimeZoneIdentifier) -> TimeZone? {
        if let offset = identifier.offset {
            return TimeZone(secondsFromGMT: offset)
        }
        return TimeZone(identifier: identifier.name)
    }
}
