//
//  MainWeatherRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

struct MainWeatherRepository: WeatherRepository {
    private let weatherService: WeatherService
    
    init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
    
    func getWeather(for location: Location) async throws -> WeatherProtocol {
        try await weatherService.getWeather(for: location)
    }
}
