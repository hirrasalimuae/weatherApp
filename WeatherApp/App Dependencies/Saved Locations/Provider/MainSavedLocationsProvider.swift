//
//  MainSavedLocationsProvider.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import OSLog

struct MainSavedLocationsProvider: SavedLocationsProvider {
    private let datastore: Datastore
    private let logger: Logger
    
    init(datastore: Datastore, logger: Logger) {
        self.datastore = datastore
        self.logger = logger
    }
    
    func getSavedLocations() async throws -> [Location] {
        do {
            let locations: [Location] = try datastore.fetch(forKey: .savedLocations)
            logger.trace("Fetched saved locations")
            return locations
        } catch DatastoreError.notFound {
            logger.error("Saved locations may be unavailable or not used yet. Returning nil...")
            return []
        } catch {
            logger.error("Could not retrieve saved locations: \(error)")
            throw error
        }
    }
    
    func add(_ location: Location) async throws {
        do {
            let locations: [Location] = try datastore.fetch(forKey: .savedLocations)
            let sortedLocations = add(location, to: locations)
            try datastore.store(sortedLocations, withKey: .savedLocations)
        } catch DatastoreError.notFound {
            logger.error("Saved locations may be unavailable or not used yet.")
            let newLocations = add(location, to: [])
            try datastore.store(newLocations, withKey: .savedLocations)
        } catch {
            throw error
        }
    }
    
    func delete(_ location: Location) async throws {
        do {
            var locations: [Location] = try datastore.fetch(forKey: .savedLocations)
            guard let index = locations.firstIndex(where: { $0.fullName == location.fullName }) else {
                throw LocationError.notFound
            }
            locations.remove(at: index)
            try datastore.store(locations, withKey: .savedLocations)
        } catch {
            throw error
        }
    }
    
    private func add(_ location: Location, to locations: [Location]) -> [Location] {
        if locations.isEmpty {
            return [location]
        }
        
        var sortedLocations = locations.sorted { $1.timestamp > $0.timestamp }
        
        if sortedLocations.count == 10 {
            sortedLocations.removeLast()
        }
        
        sortedLocations.insert(location, at: 0)
        return sortedLocations
    }
}
