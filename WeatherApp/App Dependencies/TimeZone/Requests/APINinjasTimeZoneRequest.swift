//
//  APINinjasTimeZoneRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

/// The API request to get a time zone from API-Ninjas.
struct APINinjasTimeZoneRequest: Request {
    var host = "api.api-ninjas.com"
    var path = "/v1/timezone"
    var queryItems: [String: String]
    var headers: [String: String]
}
