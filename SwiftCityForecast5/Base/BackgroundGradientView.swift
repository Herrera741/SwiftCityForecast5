//
//  BackgroundGradientView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct BackgroundGradientView: View {
    let topColor: Color
    let bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundGradientView(topColor: .blue, bottomColor: Color.lightBlue)
}
