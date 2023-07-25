//
//  ContentView.swift
//  Weather
//
//  Created by Jesus Rivera on 10/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    @State private var days: [WeatherDay] = [
        WeatherDay(day: .tuesday, weatherIcon: "cloud.sun.fill", temperature: 74),
        WeatherDay(day: .wednesday, weatherIcon: "sun.max.fill", temperature: 70),
        WeatherDay(day: .thursday, weatherIcon: "wind", temperature: 66),
        WeatherDay(day: .friday, weatherIcon: "sunset.fill", temperature: 60),
        WeatherDay(day: .saturday, weatherIcon: "snowflake", temperature: 25),
    ]
        
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                TemperatureIcon(iconName: isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                temperature: 76)
                    .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    ForEach(days, id: \.id) { day in
                        WeatherDayView(dayOfWeek: day.day.dayShortName, iconName: day.weatherIcon, temperature: day.temperature)
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                    days[0].weatherIcon = isNight ? "cloud.moon.fill" : "cloud.sun.fill"
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}


