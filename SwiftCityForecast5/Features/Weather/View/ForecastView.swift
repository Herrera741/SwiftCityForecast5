//
//  WeatherView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ForecastView()
}
