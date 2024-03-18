//
//  MainCurrentLocationRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import OSLog

struct MainCurrentLocationRepository: CurrentLocationRepository {
    private let provider: CurrentLocationProvider
    
    init(provider: CurrentLocationProvider) {
        self.provider = provider
    }
    
    func getCurrentLocation() throws -> Location {
        try provider.getCurrentLocation()
    }
    
    func saveCurrentLocation(_ location: Location) throws {
        try provider.saveCurrentLocation(location)
    }
}
