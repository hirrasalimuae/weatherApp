//
//  MainTimeZoneRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

struct MainTimeZoneRepository: TimeZoneRepository {
    private let service: TimeZoneService
    
    init(service: TimeZoneService) {
        self.service = service
    }
    
    func getTimeZone(for location: Location) async throws -> TimeZoneIdentifier {
        try await service.getTimeZone(for: location)
    }
}
