//
//  PrecipitationCard.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI
import WeatherKit

struct PrecipitationCard: View {
    private let value: Double?
    private let unit: UnitLength
    private let items: [[WeatherCardGridViewItem.Model]]
    
    init(value: Double?, unit: UnitLength, items: [[WeatherCardGridViewItem.Model]]) {
        self.value = value
        self.unit = unit
        self.items = items
    }
    
    var body: some View {
        WeatherCard(
            title: "precipitation",
            imageName: "drop.fill",
            value: value?.formatted(.number.precision(.fractionLength(0))) ?? "--",
            unit: unit.symbol
        ) {
            WeatherCardGridView(
                items: items
            )
        }
    }
}

//#Preview {
//    PrecipitationCard()
//}
