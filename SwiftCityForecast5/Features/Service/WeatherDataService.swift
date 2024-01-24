//
//  WeatherService.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/22/24.
//

import Foundation

final class WeatherService {
    private let BASE_URL = "https://api.github.com/users/Herrera741"
    
    func fetchData() async -> GithubUser? {
        let urlString = self.BASE_URL
        
        guard let url = URL(string: urlString) else {
            print("DEBUG: bad url")
            return nil
        }
        print(url)
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            print(data)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            
            let decodedUser = try decoder.decode(GithubUser.self, from: data)
            print("DEBUG: decoded user = \(decodedUser)")
            return decodedUser
        } catch {
            print("Failed due to error \(error.localizedDescription)")
            return nil
        }
    }
}
