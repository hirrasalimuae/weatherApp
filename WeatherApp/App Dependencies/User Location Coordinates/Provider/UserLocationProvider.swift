//
//  UserLocationProvider.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

/// An object that can resolve and return the user's current location coordinates.
protocol UserLocationProvider {
    /**
     Resolves and returns the user's current location coordinates.
     
     - Returns: The user's current location coordinates.
     - Throws: CLError.Code.locationUnknown if unable to retrieve a location right away, CLError.Code.headingFailure if failure is caused by strong magnetic winds, or CLError.Code.denied if the user has denied location services to the app.
     */
    func getUserLocationCoordinates() async throws -> CLLocationCoordinate2D
}
