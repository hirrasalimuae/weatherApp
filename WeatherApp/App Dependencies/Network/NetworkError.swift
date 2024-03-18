//
//  NetworkError.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

enum NetworkError: LocalizedError {
    case badURL
    case invalidResponse
    case invalidURL
    case failedDecode
    case operationFailed
}
