//
//  UVIndexCard.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI
import WeatherKit

struct UVIndexCard: View {
    private let formattedValue: String
    private let category: String
    
    init(formattedValue: String, category: String) {
        self.formattedValue = formattedValue
        self.category = category
    }
    
    var body: some View {
        WeatherCard(
            title: "uv index",
            imageName: "sun.max.trianglebadge.exclamationmark.fill",
            value: formattedValue,
            unit: "UVI"
        ) {
            WeatherCardTitleSubtitleView(
                title: category,
                subtitle: (category.lowercased() + " risk of harm from UV rays").sentenceCased
            )
        }
    }
}

//#Preview {
//    UVIndexCard()
//}
