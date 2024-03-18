//
//  LocationsGridView.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import SwiftUI

struct LocationsGridView<Current: View, Saved: View>: View {
    private let hasLocations: Bool
    @ViewBuilder private let currentLocationSection: () -> Current
    @ViewBuilder private let savedLocationsSection: () -> Saved
    
    init(hasLocations: Bool, currentLocationSection: @escaping () -> Current, savedLocationsSection: @escaping () -> Saved) {
        self.hasLocations = hasLocations
        self.currentLocationSection = currentLocationSection
        self.savedLocationsSection = savedLocationsSection
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(
                alignment: .leading,
                spacing: 12
            ) {
                currentLocationSection()
                
                if hasLocations {
                    savedLocationsSection()
                }
            }
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

#Preview {
    LocationsGridView(hasLocations: true) {
        EmptyView()
    } savedLocationsSection: {
        EmptyView()
    }
}
