//
//  UserLocationAuthorisationProvider.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

/// An object that resolves and returns the user's authorisation status. This object also handles authorisation requests on first current location request.
protocol UserLocationAuthorisationProvider {
    /**
     Immediately returns the system's current location authorisation staus.
     
     - Returns: The current authorisation status from the system.
     */
    func getAuthorisationStatus() -> CLAuthorizationStatus
    
    /**
     Requests location authorisation and returns the result of the user's decision.
     
     - Returns: The authorisation status the user has chosen.
     */
    func requestLocationAuthorisation() async -> CLAuthorizationStatus
}
