//
//  Forecast.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation

struct Forecast: Codable {
    let timeline: Timeline
}

struct Timeline: Codable {
    let dailyForecasts: [DailyForecast]
    
    enum CodingKeys: String, CodingKey {
        case dailyForecasts = "daily"
    }
}

struct DailyForecast: Codable {
    let forecastDateTime: String
    let forecastValues: ForecastValues
    
    enum CodingKeys: String, CodingKey {
        case forecastDateTime = "time"
        case forecastValues = "values"
    }
}

struct ForecastValues: Codable {
    let temperatureAvg: Double
    let temperatureMax, temperatureMin: Double
    let weatherCodeMax, weatherCodeMin: Int
}




