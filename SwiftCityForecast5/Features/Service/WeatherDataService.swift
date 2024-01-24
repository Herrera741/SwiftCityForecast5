//
//  WeatherDataService.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation

class WeatherDataService {
    private let REALTIME_BASE_URL = "https://api.tomorrow.io/v4/weather/realtime?location=downey&units=imperial&apikey="
    private let FORECAST_BASE_URL = "https://api.tomorrow.io/v4/weather/forecast?location=downey&timesteps=1d&units=imperial&apikey="
    private let keyManager = APIKeyManager()
    
    func fetchRealtimeWeatherWithForecast(completion: @escaping (CityWeatherForecast) -> Void) {
        self.keyManager.fetchKey { weatherAPIKey in
            let urlString = self.REALTIME_BASE_URL + weatherAPIKey
            guard let url = URL(string: urlString) else { return }
            
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let weatherData = data else {
                    print("DEBUG: bad weather data")
                    return
                }
                
                print("weather data: \(weatherData)")
                
                guard let httpResponse = response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    print("DEBUG: bad weather httpResponse possibly due to too many api calls (status code 429)")
                    return
                }
                
                let decoder = JSONDecoder()
                guard let realtimeWeather = try? decoder.decode(RealtimeWeather.self, from: weatherData) else {
                    print("DEBUG: failed to decode weather")
                    return
                }
                
                // build values for city weather/forecast properties
                let cityName = self.getCityName(locationString: realtimeWeather.location.city)
                let currentDate = self.getFormattedDate()
                let currentTemp = self.getFormattedCurrentTemp(temp: realtimeWeather.data.values.temperature)
                let cityWeatherForecast = CityWeatherForecast(
                    cityName: cityName,
                    currentDate: currentDate,
                    weatherCode: "",
                    currentTemp: currentTemp)
                
                completion(cityWeatherForecast)
            }.resume()
        }
    }
    
    func getFormattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM, d, yyyy"
        let currentDate = Date()

        return  dateFormatter.string(from: currentDate)
    }
    
    func getCityName(locationString: String) -> String {
        return String(locationString.split(separator: ",")[0])
    }
    
    func getFormattedCurrentTemp(temp: Double) -> String {
        return String(Int(temp))
    }
    
    func fetchForecastWith(apiKey: String, completion: @escaping (Forecast) -> Void) {
        let urlString = self.FORECAST_BASE_URL + apiKey
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let forecastData = data else {
                print("DEBUG: bad forecast data")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                print("DEBUG: bad forecast httpResponse")
                return
            }
            
            guard let cityForecast = try? JSONDecoder().decode(Forecast.self, from: forecastData) else {
                print("DEBUG: unable to decode cityForecast")
                return
            }
            
            completion(cityForecast)
        }.resume()
    }
}

//enum APISeriveError: Error {
//    case invalidURL, invalidData
//}
