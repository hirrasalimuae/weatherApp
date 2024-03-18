//
//  AppleWeatherService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import WeatherKit

struct AppleWeatherService: WeatherService {
    private let service: WeatherKit.WeatherService
    
    init(service: WeatherKit.WeatherService) {
        self.service = service
    }
    
    func getWeather(for location: Location) async throws -> WeatherProtocol {
        do {
            return try await service.weather(for: .init(latitude: location.latitude, longitude: location.longitude))
        } catch {
            throw error
        }
    }
}
