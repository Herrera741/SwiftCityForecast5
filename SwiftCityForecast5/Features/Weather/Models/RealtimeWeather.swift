//
//  RealtimeWeather.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation

struct RealtimeWeather: Codable {
    let data: WeatherData
    let location: Location
}

struct WeatherData: Codable {
    let currentTime: String
    let values: ValuesData
    
    enum CodingKeys: String, CodingKey {
        case currentTime = "time"
        case values
    }
}

struct ValuesData: Codable {
    let temperature: Double
}

struct Location: Codable {
    var city: String
    
    enum CodingKeys: String, CodingKey {
        case city = "name"
    }
}
