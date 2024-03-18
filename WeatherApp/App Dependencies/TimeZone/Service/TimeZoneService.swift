//
//  TimeZoneService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

/// An object that interfaces with a web API to retrieve a time zone.
protocol TimeZoneService {
    /**
     Obtains the time zone for a given set of coordinates.
     
     - Returns: The requested time zone as a TimeZoneIdentifier object.
     - Parameter location: The location to get the time zone for.
     - Throws: A generic Error if unsuccessful.
     */
    func getTimeZone(for location: Location) async throws -> TimeZoneIdentifier
}
