//
//  OpenWeatherMapReverseGeocodingRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// The API request to get a reverse-geocoded result from OpenWeatherMap.
struct OpenWeatherMapReverseGeocodingRequest: Request {
    var host = "api.openweathermap.org"
    var path = "/geo/1.0/reverse"
    var queryItems: [String: String]
}
