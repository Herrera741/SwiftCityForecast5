//
//  WeatherViewModel.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation

final class WeatherViewModel: ObservableObject {
    @Published var cityWeatherForecast: CityWeatherForecast?
    private let service = WeatherDataService()
    
    init() {
        fetchRealtimeWeatherWithForecast()
    }
    
    func fetchRealtimeWeatherWithForecast() {
        self.service.fetchRealtimeWeatherWithForecast { cityWeatherForecast in
            DispatchQueue.main.async {
                self.cityWeatherForecast = cityWeatherForecast
            }
        }
    }
    
}
