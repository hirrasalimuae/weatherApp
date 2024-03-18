//
//  PreferencesProvider.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

protocol StringPreferenceProvider {
    func string(forKey service: String) -> String?
}

extension UserDefaults: StringPreferenceProvider { }
