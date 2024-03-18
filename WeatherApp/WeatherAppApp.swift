//
//  WeatherAppApp.swift
//  WeatherApp
//
//  Created by hirrasalim on 18/03/2024.
//

import SwiftUI

@main
struct WeatherAppApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @AppStorage(Settings.appTheme) private var theme = Theme.default
    
    let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.amSymbol = "am"
        formatter.pmSymbol = "pm"
        formatter.dateFormat = "H:mm a"
        
        return formatter
    }()
    
    init() {
        NSUbiquitousKeyValueStore.default.synchronize()
    }

    var body: some Scene {
        WindowGroup {
            MainView(
                viewModel: .shared
            )
            .environment(\.timeFormatter, timeFormatter)
            .tint(.primary)
            .preferredColorScheme(getColorScheme())
        }
        .onChange(of: scenePhase) { oldValue, newValue in
            if oldValue == .background {
                NSUbiquitousKeyValueStore.default.synchronize()
            }
        }
    }
    
    private func getColorScheme() -> ColorScheme? {
        switch theme {
            case .light:
                return .light
            case .dark:
                return .dark
            case .system:
                return nil
        }
    }
}

private struct TimeFormatterKey: EnvironmentKey {
    static let defaultValue: DateFormatter = DateFormatter()
}

extension EnvironmentValues {
    var timeFormatter: DateFormatter {
        get { self[TimeFormatterKey.self] }
        set { self[TimeFormatterKey.self] = newValue }
    }
}

