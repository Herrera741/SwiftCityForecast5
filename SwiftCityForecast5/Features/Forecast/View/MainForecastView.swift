//
//  MainForecastView.swift
//  SwiftCityForecast5
//
//  Created by Sergio Herrera on 1/10/24.
//

import SwiftUI

struct MainForecastView: View {
    var isTimeNow = true
    
    var body: some View {
        ZStack {
            BackgroundGradientView(topColor: .blue, bottomColor: Color.lightBlue)
            
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
                        WeatherImageView(
                            image: "cloud.sun.fill",
                            sideLength: 100)
                        
                        Text("76°")
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
                            .foregroundStyle(.yellow)
                            .shadow(radius: 1, x: 2, y: 1)
                        }
                        
                        Button {
                            // change time back to now within day
                        } label: {
                            WeatherImageView(
                                image: "arrowshape.turn.up.backward.badge.clock.fill",
                                sideLength: 50)
                            .foregroundStyle(isTimeNow ? .yellow.opacity(0.3) : .yellow)
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
                
                
                CustomButton(action: {
                    print("showing change city sheet")
                }, 
                    text: "Change City")
            } // end VStack
        } // end ZStack
    }
}

#Preview {
    MainForecastView()
}
