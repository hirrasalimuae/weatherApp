//
//  Listener.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import Foundation

/// An object that listens for any changes to the Broadcaster's property state.
protocol Listener {
    var id: UUID { get }
    func update()
}
