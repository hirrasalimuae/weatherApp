//
//  CurrentLocationSectionHeader.swift
//  MiniWeather
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI

struct CurrentLocationSectionHeader: View {
    private let shouldShowProgressView: Bool
    
    init(shouldShowProgressView: Bool) {
        self.shouldShowProgressView = shouldShowProgressView
    }
    
    var body: some View {
        HStack {
            Text("Current Location")
                .font(
                    .system(size: 20, weight: .semibold)
                )
            
            Spacer()
            
            if shouldShowProgressView {
                ProgressView()
            }
        }
        .padding([.top, .horizontal], 16)
    }
}

#Preview {
    CurrentLocationSectionHeader(shouldShowProgressView: true)
}
