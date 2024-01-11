//
//  SingleDayForecastView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct SingleDayForecastView: View {
    let day: String
    let image: String
    let temperature: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(day)
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text("\(temperature)°")
                .font(.system(size: 35, weight: .semibold))
                .foregroundStyle(.white)
        } // end VStack
    }
}

#Preview {
    SingleDayForecastView(day: "THU", image: "cloud.sun.fill", temperature: 76)
}
