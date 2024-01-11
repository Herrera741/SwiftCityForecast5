//
//  WeatherView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color.lightBlue)
            
            VStack {
                VStack(spacing: 10) {
                    Text("Los Angeles, CA")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 10) {
                        Text("Wednesday")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white)
                        
                        Text("Jan 10, 2023")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                }
                .padding(.bottom, 25)
                
                HStack(spacing: 20) {
                    VStack {
                        Text("Now")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                    VStack(spacing: 5) {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("76°")
                            .font(.system(size: 50, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                    Button {
                        // change time within day
                    } label: {
                        Image(systemName: "clock.arrow.circlepath")
                            .resizable()
                            .scaleEffect(x: -1, y: 1)
                            .aspectRatio(contentMode: .fit)
                            .foregroundStyle(.yellow)
                            .frame(width: 50, height: 50)
                            .shadow(radius: 1, x: 2, y: 1)
                    }
                } // end HStack
                .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("5-Day Forecast")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 20) {
                        SingleDayForecastView(day: "WED",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        SingleDayForecastView(day: "THU",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        SingleDayForecastView(day: "FRI",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        SingleDayForecastView(day: "SAT",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        SingleDayForecastView(day: "SUN",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                    } // end HStack
                    .padding(.bottom, 40)
                } // end VStack
                
                Button {
                    // do something
                } label: {
                    Text("Change City")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 280, height: 55)
                        .background(.blue)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10)
                        )
                }
            } // end VStack
        } // end ZStack
    }
}

#Preview {
    ForecastView()
}
