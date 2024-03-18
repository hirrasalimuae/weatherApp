//
//  MainUserLocationCoordinatesRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

struct MainUserLocationCoordinatesRepository: UserLocationCoordinatesRepository {
    private let userLocationProvider: UserLocationProvider
    
    init(userLocationProvider: UserLocationProvider) {
        self.userLocationProvider = userLocationProvider
    }
    
    func getUserLocationCoordinates() async throws -> CLLocationCoordinate2D {
        try await userLocationProvider.getUserLocationCoordinates()
    }
}
