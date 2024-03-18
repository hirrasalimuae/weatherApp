//
//  Calendar+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

extension Calendar {
    static func withTimeZone(_ timeZone: TimeZone) -> Calendar {
        var calendar = Calendar.autoupdatingCurrent
        calendar.timeZone = timeZone
        return calendar
    }
}
