//
//  lokoweatherApp.swift
//  lokoweather
//
//  Created by Rodrigues, Luis (EXTERN: EEDS) on 19/12/2022.
//

import SwiftUI

@main
struct lokoweatherApp: App {
    var body: some Scene {
        WindowGroup {
			WeatherView(weatherDays: WeatherDay.sampleData)
        }
    }
}
