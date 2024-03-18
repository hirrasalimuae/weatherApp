//
//  AppleWeatherExtensions.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import Foundation
import WeatherKit

extension Weather {
    func today() -> DayWeather? {
        dailyForecast.first(where: { Calendar.autoupdatingCurrent.isDateInToday($0.date) })
    }
    
    func tomorrow() -> DayWeather? {
        dailyForecast.first(where: { Calendar.autoupdatingCurrent.isDateInTomorrow($0.date) })
    }
}
