//
//  UserLocationCoordinatesRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

/// An object that can return the user's current location coordinates.
protocol UserLocationCoordinatesRepository {
    /**
     Returns the user's current location coordinates.
     
     - Returns: The user's current location coordinates..
     - Throws: CLError.Code.locationUnknown if unable to retrieve a location right away, CLError.Code.headingFailure if failure is caused by strong magnetic winds, or CLError.Code.denied if the user has denied location services to the app.
     */
    func getUserLocationCoordinates() async throws -> CLLocationCoordinate2D
}
