//
//  DayForecastView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct DayForecastView: View {
    let day: String
    let image: String
    let temperature: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(day)
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
            
            WeatherImageView(image: image, sideLength: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 35, weight: .semibold))
                .foregroundStyle(.white)
        } // end VStack
    }
}

#Preview {
    ZStack {
        Color.blue
        DayForecastView(day: "THU", image: "cloud.sun.fill", temperature: 76)
    }
}
