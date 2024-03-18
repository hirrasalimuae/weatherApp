//
//  SavedLocationsSectionHeader.swift
//  MiniWeather
//
//  Created by hirrasalim on 17/03/2024.
//

import SwiftUI

struct SavedLocationsSectionHeader: View {
    var body: some View {
        Text("Saved Locations")
            .font(
                .system(size: 20, weight: .semibold)
            )
            .padding([.horizontal, .top], 16)
    }
}

#Preview {
    SavedLocationsSectionHeader()
}
