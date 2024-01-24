//
//  MainView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var weatherVM = WeatherViewModel()
    var isTimeNow = true
    
    var body: some View {
        ZStack {
            BackgroundGradientView(topColor: .blue, bottomColor: Color.lightBlue)

            VStack(spacing: 30) {
                VStack(spacing: 10) {
                    Text(weatherVM.cityWeatherForecast?.cityName ?? "Los Angeles")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.white)
                    
                    Text(weatherVM.cityWeatherForecast?.currentDate ?? "Today")
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 25)
                
                HStack(spacing: 20) {
                    VStack {
                        Text("Now")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                    VStack(spacing: 5) {
                        WeatherImageView(
                            image: "cloud.sun.fill",
                            sideLength: 100)
                        
                        Text(weatherVM.cityWeatherForecast?.currentTemp ?? "77°")
                            .font(.system(size: 50, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                    VStack {
                        Button {
                            // change time forward within day
                        } label: {
                            WeatherImageView(
                                image: "clock.arrow.circlepath",
                                sideLength: 50)
                            .scaleEffect(x: -1, y: 1)
                            .foregroundStyle(!isTimeNow ? .yellow.opacity(0.5) : .yellow)
                        }
                        
                        Button {
                            // change time backward to now
                        } label: {
                            WeatherImageView(
                                image: "exclamationmark.applewatch",
                                sideLength: 50)
                            .foregroundStyle(isTimeNow ? .yellow.opacity(0.5) : .yellow)
                        }
                        .disabled(isTimeNow)
                    } // end VStack
                } // end HStack
                .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("5-Day Forecast")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    HStack(spacing: 20) {
                        DayForecastView(day: "THU",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        DayForecastView(day: "FRI",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        DayForecastView(day: "SAT",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        DayForecastView(day: "SUN",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                        
                        DayForecastView(day: "MON",
                                              image: "cloud.sun.fill",
                                              temperature: 76)
                    } // end HStack
                    .padding(.bottom, 40)
                } // end VStack
//                
//                CustomButton(action: {
//                    print("showing change city sheet")
//                }, 
//                    text: "Change City")
            } // end VStack
            .padding(.horizontal, 10)
        } // end ZStack
    }
}

#Preview {
    HomeView()
}
