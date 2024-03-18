//
//  MainUserLocationAuthorisationRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

struct MainUserLocationAuthorisationRepository: UserLocationAuthorisationRepository {
    private let userLocationAuthorisationProvider: UserLocationAuthorisationProvider
    
    init(userLocationAuthorisationProvider: UserLocationAuthorisationProvider) {
        self.userLocationAuthorisationProvider = userLocationAuthorisationProvider
    }
    
    func getAuthorisationStatus() -> CLAuthorizationStatus {
        userLocationAuthorisationProvider.getAuthorisationStatus()
    }
    
    func requestLocationAuthorisation() async -> CLAuthorizationStatus {
        await userLocationAuthorisationProvider.requestLocationAuthorisation()
    }
}
