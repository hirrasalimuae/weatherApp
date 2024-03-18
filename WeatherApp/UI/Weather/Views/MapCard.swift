//
//  MapCard.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI
import MapKit

struct MapCard: View {
    private let location: Location
    
    init(location: Location) {
        self.location = location
    }
    
    var body: some View {
        Map(
            initialPosition: .region(
                .init(
                    center: location.coordinates(),
                    span: .init(
                        latitudeDelta: 0.5,
                        longitudeDelta: 0.5
                    )
                )
            ),
            interactionModes: []
        )
        .frame(height: 175)
        .clipShape(.rect(cornerRadius: 16))
        .shadow(color: .black.opacity(0.1), radius: 5)
    }
}

#Preview {
    MapCard(location: UniversalConstants.location)
}
