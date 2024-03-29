//
//  APINinjasWeatherService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

struct APINinjasWeatherService: WeatherService {
    private let parser: DataParser
    private let networkService: NetworkService
    private let apiKeysProvider: StringPreferenceProvider
    
    init(parser: DataParser, networkService: NetworkService, apiKeysProvider: StringPreferenceProvider) {
        self.parser = parser
        self.networkService = networkService
        self.apiKeysProvider = apiKeysProvider
    }
    
    func getWeather(for location: Location) async throws -> WeatherProtocol {
        let weatherRequest = APINinjasWeatherRequest(
            queryItems: [
                "lat": String(location.coordinates().latitude),
                "lon": String(location.coordinates().longitude)
            ],
            headers: ["X-Api-Key": apiKeysProvider.string(forKey: Settings.apiNinjasKey) ?? ""]
        )
        
        do {
            let data = try await networkService.getData(from: weatherRequest)
            let weather: APINinjasWeather = try parser.decode(data)
            return weather
        } catch {
            throw error
        }
    }
}
