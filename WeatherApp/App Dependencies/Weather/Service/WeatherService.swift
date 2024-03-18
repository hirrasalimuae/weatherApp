//
//  WeatherService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

/// An object that interfaces with a web API to retrieve weather info.
protocol WeatherService {
    /**
     Gets weather information for the given coordinates.
     
     - Returns: The weather info for the given location coordinates.
     - Parameter location: The location to get weather info for.
     - Throws: A generic Error if unsuccessful.
     */
    func getWeather(for location: Location) async throws -> WeatherProtocol
}
