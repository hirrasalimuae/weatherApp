//
//  OpenWeatherMapGeocodingRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// The API request to get a geocoding result from OpenWeatherMap.
struct OpenWeatherMapGeocodingRequest: Request {
    var host = "api.openweathermap.org"
    var path = "/geo/1.0/direct"
    var queryItems: [String: String]
}
