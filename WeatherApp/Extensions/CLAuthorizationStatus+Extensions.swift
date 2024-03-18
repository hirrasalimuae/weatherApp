//
//  CLAuthorizationStatus+Extensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation
import CoreLocation

extension CLAuthorizationStatus {
    func isAuthorised() -> Bool {
#if os(iOS)
        [.authorizedAlways, .authorizedWhenInUse].contains(self)
#elseif os(macOS)
        [.authorized, .authorizedAlways].contains(self)
#endif
    }
    
    func isDisallowed() -> Bool {
        [.denied, .restricted].contains(self)
    }
}
