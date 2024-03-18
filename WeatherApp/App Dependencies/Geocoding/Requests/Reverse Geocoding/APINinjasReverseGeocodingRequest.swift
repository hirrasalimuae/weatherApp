//
//  APINinjasReverseGeocodingRequest.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// The API request to get a reverse geocoding result from API-Ninjas.
struct APINinjasReverseGeocodingRequest: Request {
    var host = "api.api-ninjas.com"
    var path = "/v1/reversegeocoding"
    var queryItems: [String: String]
    var headers: [String: String]
}
