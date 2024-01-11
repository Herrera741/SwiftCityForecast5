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
            LinearGradient(colors: [.blue, Color.lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Text("Los Angeles, CA")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(.bottom, 25)
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Now")
                            .font(.system(size: 25, weight: .semibold))
                            .foregroundStyle(.white)
                        
                        Text("Jan 10, 2023")
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    
                    VStack(spacing: 5) {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        
                        Text("76")
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
                    }
                } // end HStack
                .padding(.bottom, 30)
                
                HStack(spacing: 20) {
                    VStack(spacing: 5) {
                        Text("WED")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("76")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundStyle(.white)
                    } // end VStack
                    
                    VStack(spacing: 5) {
                        Text("THU")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("76")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundStyle(.white)
                    } // end VStack
                    
                    VStack(spacing: 5) {
                        Text("FRI")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("76")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundStyle(.white)
                    } // end VStack
                    
                    VStack(spacing: 5) {
                        Text("SAT")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("76")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundStyle(.white)
                    } // end VStack
                    
                    VStack(spacing: 5) {
                        Text("SUN")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("76")
                            .font(.system(size: 35, weight: .semibold))
                            .foregroundStyle(.white)
                    } // end VStack
                } // end HStack
                .padding(.bottom, 40)
                
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
