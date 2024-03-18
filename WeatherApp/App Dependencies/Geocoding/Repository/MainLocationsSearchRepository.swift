//
//  MainLocationsSearchRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

struct MainLocationsSearchRepository: LocationsSearchRepository {
    private var geocodeService: GeocoderService
    
    init(geocodeService: GeocoderService) {
        self.geocodeService = geocodeService
    }
    
    func getLocations(named searchText: String) async throws -> [Location] {
        try await geocodeService.getLocations(named: searchText)
    }
    
    func getLocations(at coordinates: CLLocationCoordinate2D) async throws -> [Location] {
        try await geocodeService.getLocations(at: coordinates)
    }
}
