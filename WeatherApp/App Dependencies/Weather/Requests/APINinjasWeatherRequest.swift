//
//  APINinjasWeatherRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

/// The API request to get weather info from API-Ninjas.
struct APINinjasWeatherRequest: Request {
    var host = "api.api-ninjas.com"
    var path = "/v1/weather"
    var queryItems: [String: String]
    var headers: [String: String]
}
