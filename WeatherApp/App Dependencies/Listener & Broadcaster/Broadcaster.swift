//
//  Broadcaster.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// An object that can notify its observers of changes to its Property object.
protocol Broadcaster<Property> {
    associatedtype Property
    
    func getState() -> Property
    func register(_ observer: any Listener)
    func unregister(_ observer: any Listener)
    func notifyObservers()
}
