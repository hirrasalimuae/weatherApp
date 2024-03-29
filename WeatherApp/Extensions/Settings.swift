
//
//  Settings.swift
//  WeatherApp
//
//  Created by hirrasalim on 19/03/2024.
//

import Foundation

struct Settings {
    static let appTheme = "appTheme"
    static let unitsOfMeasure = "unitsOfMeasure"
    static let geocoderService = "geocoderService"
    static let weatherProvider = "weatherProvider"
    static let apiNinjasKey = "apiNinjasKey"
    static let openWeatherMapKey = "openWeatherMapKey"
    static let showLocationsUnits = "showLocationsUnits"
    static let showWeatherViewMap = "showWeatherViewMap"
    static let showWeatherViewUnits = "showWeatherViewUnits"
    
    /// The current value of the given settings key.
    static func currentValue<Value: DefaultPresenting & RawRepresentable<String>>(for key: String) -> Value {
        guard let rawValue = UserDefaults.standard.string(forKey: key), let value = Value(rawValue: rawValue) else {
            return Value.default
        }
        return value
    }
}

/// An object that has a default value to start with.
protocol DefaultPresenting {
    static var `default`: Self { get }
}

/// A type of setting where one out of multiple options can be selected.
protocol PickableSetting: DefaultPresenting, CaseIterable, Identifiable, RawRepresentable<String> { }

enum Theme: String, PickableSetting {
    case light = "Light"
    case dark = "Dark"
    case system = "Default"
    
    var id: Self {
        self
    }
    
    static let `default`: Theme = .system
}

enum Service: String, PickableSetting {
    case apple = "Apple"
    case apiNinjas = "API-Ninjas"
    case openWeatherMap = "OpenWeatherMap"
    
    var id: Self {
        self
    }
    
    static let `default`: Service = .apple
}

enum UnitOfMeasure: String, PickableSetting {
    case metric = "Metric"
    case imperial = "Imperial"
    case scientific = "Scientific"
    
    var id: Self {
        self
    }
    
    static let `default`: UnitOfMeasure = .metric
}
