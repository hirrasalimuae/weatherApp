//
//  LocationManagerDelegate.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

/// An object that can return user location authorisation and the user's current location.
protocol LocationManagerDelegate: CLLocationManagerDelegate, UserLocationAuthorisationProvider, UserLocationProvider { }
