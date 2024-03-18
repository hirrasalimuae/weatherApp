//
//  APINinjasLocationsRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

/// The API request to get a geocoding result from API-Ninjas.
struct APINinjasGeocodingRequest: Request {
    var host = "api.api-ninjas.com"
    var path = "/v1/geocoding"
    var queryItems: [String: String]
    var headers: [String: String]
}
