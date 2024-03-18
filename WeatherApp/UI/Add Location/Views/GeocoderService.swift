//
//  GeocoderService.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

protocol GeocoderService {
    func retrieveLocations(named searchText: String) async throws -> [Location]
}
