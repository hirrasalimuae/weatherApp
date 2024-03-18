//
//  MinuteForecastCard.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI
import WeatherKit

struct MinuteForecastCard: View {
    let forecast: Forecast<MinuteWeather>
    
    var body: some View {
        WeatherCard(title: "Minute Forecast", showHeader: false) {
            EmptyView()
        }
    }
}

//#Preview {
//    MinuteForecastCard()
//}
