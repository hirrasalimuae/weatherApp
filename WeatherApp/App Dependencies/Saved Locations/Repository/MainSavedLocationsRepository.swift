//
//  MainSavedLocationsRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

struct MainSavedLocationsRepository: SavedLocationsRepository {
    private let provider: SavedLocationsProvider
    
    init(provider: SavedLocationsProvider) {
        self.provider = provider
    }
    
    func getSavedLocations() async throws -> [Location] {
        try await provider.getSavedLocations()
    }
    
    func add(_ location: Location) async throws {
        try await provider.add(location)
    }
    
    func delete(_ location: Location) async throws {
        try await provider.delete(location)
    }
}
