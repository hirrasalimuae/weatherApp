//
//  CurrentLocationRepository.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation

/// An object that can return the user's current location.
protocol CurrentLocationRepository {
    /**
     Gets the user's current location from disk.
     
     - Returns: The user's current location.
     - Throws: LocationError.accessNotDetermined if the user has not yet made a decision on location access, DatastoreError.notFound if the location object is not found on disk, or a DecodeError if the decode operation fails.
     */
    func getCurrentLocation() throws -> Location
    
    /**
     Stores the user's current location on disk.
     
     - Parameter location: The user's current location.
     - Throws: A DecodeError if the encode operation fails.
     */
    func saveCurrentLocation(_ location: Location) throws
}
