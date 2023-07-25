//
//  DayTemperature.swift
//  Weather
//
//  Created by Jesus Rivera on 10/02/23.
//

import SwiftUI

struct WeatherDayView: View {
    var dayOfWeek: String
    var iconName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            TemperatureIcon(iconName: iconName,
                            temperature: temperature,
                            spacing: 8,
                            frame: (40,40),
                            fontSize: 28)
        }
    }
}
