//
//  CLPlacemark+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import CoreLocation

extension CLPlacemark: LocationProtocol {
    var city: String {
        locality ?? name ?? "Unknown City"
    }
    
    var state: String? {
        administrativeArea
    }
    
    var countryName: String {
        country ?? "Unknown Country"
    }
    
    var latitude: Double {
        location?.coordinate.latitude ?? 0
    }
    
    var longitude: Double {
        location?.coordinate.longitude ?? 0
    }
}
