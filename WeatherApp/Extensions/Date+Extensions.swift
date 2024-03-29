//
//  Date+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

extension Date {
    /**
     Converts the current date to the date in the given time zone.
     
     - parameter timeZone: The time zone for the date to be converted to.
     - Returns: The current date in the given time zone.
     */
    func `in`(timeZone: TimeZone?) -> Date {
        let calendar = Calendar.current
        var components = calendar.dateComponents(in: timeZone ?? .autoupdatingCurrent, from: self)
        components.timeZone = .autoupdatingCurrent
        return calendar.date(from: components) ?? .now
    }
    
    func from(timeZone: TimeZone, to destination: TimeZone) -> Date {
        let calendar = Calendar.current
        var components = calendar.dateComponents(in: destination, from: self)
        components.timeZone = timeZone
        return calendar.date(from: components) ?? .now
    }
}

