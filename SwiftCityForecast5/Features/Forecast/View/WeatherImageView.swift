//
//  WeatherImageView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/11/24.
//

import SwiftUI

struct WeatherImageView: View {
    let image: String
    let sideLength: CGFloat
    
    var body: some View {
        Image(systemName: image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: sideLength, height: sideLength)
    }
}

#Preview {
    ZStack {
        Color.blue
        WeatherImageView(image: "cloud.sun.fill",
                         sideLength: 100)
    }
}
