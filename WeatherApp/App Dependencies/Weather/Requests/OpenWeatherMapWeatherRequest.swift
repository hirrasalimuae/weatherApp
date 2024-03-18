//
//  OpenWeatherMapWeatherRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// The API request to get weather info from OpenWeatherMap.
struct OpenWeatherMapWeatherRequest: Request {
    var host = "api.openweathermap.org"
    var path = "/data/3.0/onecall"
    var queryItems: [String: String]
}
